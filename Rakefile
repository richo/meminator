require 'rake'
require 'rspec/core/rake_task'

require File.expand_path("../lib/meminator", __FILE__)

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = "spec/**/*_spec.rb"
end

desc 'Default: run specs'
task :default => :spec

def format_result(res)
  res["result"].each do |val|
    puts "advice_dog '#{format_display_name(val["displayName"])}', #{val["generatorID"]}, '#{val["urlName"]}', #{extract_imageID(val["imageUrl"])}"
  end
end

def format_display_name(name)
  name.upcase.gsub(/ /, "_")
end

def extract_imageID(url)
  $1 if url =~ /(\d+)\.jpg$/
end

desc "Spider the memegenerator API"
task :spider do
  m = Meminator::Meminator.new
  url = URI("http://version1.api.memegenerator.net/Generators_Select_ByPopular")
  params = {
    "pageIndex" => 0,
    "pageSize" => 12,
    "days" => 60
  }

  12.times do
    format_result(m.fetch(url, params))
    params["pageIndex"] += 1
  end
end
