require 'net/http'
require 'cgi'
require 'json'

##
# Generate memes using http://memegenerator.net

module Meminator
  VERSION = '0.0.6'
  GENERATOR_URL = 'http://version1.api.memegenerator.net/Instance_Create'
  DISPLAY_URL = 'http://cdn.memegenerator.net'
  class Error < Exception; end
  class Meminator

    def get_url(meme, *text)
      template_id, template_type, generator_name, imageID = List.get(meme)

      unless template_id
        return "Couldn't find template #{meme}"
      end

      url = URI.parse(GENERATOR_URL)

      params = { 'username'      => ::Meminator.username,
                 'password'      => ::Meminator.password,
                 'templateType'  => template_type,
                 'generatorID'   => template_id,
                 'imageID'       => imageID,
                 'generatorName' => generator_name }

      text.compact.each_with_index do |item, idx|
         params.merge! "text#{idx}" => item
      end

      begin
        val = fetch(url, params)
        return "#{DISPLAY_URL}/instances/400x/#{val["result"]["instanceID"]}.jpg"
      rescue Error => e
        return e.message
      end
    end

    def fetch(url, params)
      params = params.collect { |k,v| "#{k}=#{CGI::escape(v.to_s)}" }.join('&')
      Net::HTTP.start url.host do |http|
        get = Net::HTTP::Get.new url.path + "?#{params}"
        get['User-Agent'] = ::Meminator.user_agent

        res = http.request get

        unless  Net::HTTPSuccess === res
          raise Error, "memegenerator.net appears to be down, got #{res.code}"
        end

        JSON.load(res.body)
      end
    end

  end
end

%w[list user_agent auth].each do |filename|
  require "meminator/#{filename}"
end
