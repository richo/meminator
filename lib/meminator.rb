require 'net/http'
require 'cgi'
require 'json'

##
# Generate memes using http://memegenerator.net

module Meminator
  VERSION = '0.0.3'
  GENERATOR_URL = 'http://version1.api.memegenerator.net/Instance_Create'
  DISPLAY_URL = 'http://cdn.memegenerator.net'
  class Error < Exception; end
  class Meminator

    def get_url(meme, *text)
      template_id, template_type, generator_name, default_line = List.get(meme)

      unless template_id
        return "Couldn't find template #{meme}"
      end

      url = URI.parse(GENERATOR_URL)

      params = { 'username'      => ::Meminator.username,
                 'password'      => ::Meminator.password,
                 'templateType'  => template_type,
                 'generatorID'   => template_id,
                 'imageID'       => 20, # TODO infer from generatorID
                 'generatorName' => generator_name }

      [default_line, *text].compact.each_with_index do |item, idx|
         params.merge! "text#{idx}" => item
      end

      begin
        return fetch(url, params)
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

        ret = JSON.load(res.body)

        if ret["success"]
          return "#{DISPLAY_URL}#{ret["result"]["instanceImageUrl"]}"
        end
      end
    end

  end
end

%w[list user_agent auth].each do |filename|
  require "meminator/#{filename}"
end
