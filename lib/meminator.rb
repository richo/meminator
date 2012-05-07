require 'net/http'
require 'nokogiri'
require 'cgi'

##
# Generate memes using http://memegenerator.net

module Meminator
  VERSION = '0.0.1'
  GENERATOR_URL = 'http://memegenerator.net/Instance/CreateOrEdit'
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

      return fetch(url, post_data)
    end

    def fetch(url, data)
      Net::HTTP.start url.host do |http|
        post = Net::HTTP::Post.new url.path
        post['User-Agent'] = ::Meminator.user_agent
        post.set_form_data post_data

        res = http.request post

        location = res['Location']
        redirect = url + location

        get = Net::HTTP::Get.new redirect.request_uri
        get['User-Agent'] = ::Meminator.user_agent

        res = http.request get
      end

      if Net::HTTPSuccess === res then
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
