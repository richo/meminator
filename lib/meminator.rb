require 'net/http'
require 'nokogiri'
require 'cgi'

##
# Generate memes using http://memegenerator.net

module Meminator
  VERSION = '0.0.1'
  GENERATOR_URL = 'http://memegenerator.net/Instance/CreateOrEdit'
  class Error < Exception; end
  class Meminator

    def get_url(meme, *text)
      template_id, template_type, generator_name, default_line = List.get(meme)

      url = URI.parse(GENERATOR_URL)

      post_data = { 'templateType'  => template_type,
                    'templateID'    => template_id,
                    'generatorName' => generator_name }

      [default_line, *text].compact.each_with_index do |item, idx|
         post_data.merge! "text#{idx}" => item
      end

      begin
        return fetch(url, post_data)
      rescue Error => e
        return e.message
      end
    end

    def fetch(url, post_data)
      Net::HTTP.start url.host do |http|
        post = Net::HTTP::Post.new url.path
        post['User-Agent'] = ::Meminator.user_agent
        post.set_form_data post_data

        res = http.request post

        unless  Net::HTTPSuccess === res
          raise Error, "memegenerator.net appears to be down, got #{res.code}"
        end

        location = res['Location']
        redirect = url + location

        get = Net::HTTP::Get.new redirect.request_uri
        get['User-Agent'] = ::Meminator.user_agent

        res = http.request get
      end

      if Net::HTTPSuccess === res
        doc = Nokogiri.HTML res.body
        doc.css("a[href=\"#{location}\"] img").first['src']
      else
        raise Error, "memegenerator.net appears to be down, got #{res.code}"
      end
    end

  end
end

%w[list user_agent].each do |filename|
  require "meminator/#{filename}"
end
