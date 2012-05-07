Gem::Specification.new do |s|
  s.name        = "meminator"
  s.version     = "0.0.0"
  s.authors     = ["Eric Hodel", "Rich Healey"]
  s.email       = ["richo@psych0tik.net"]
  s.homepage    = "http://github.com/richoH/meminator"
  s.summary     = "API to retrieve urls for memes"
  s.description = s.summary

  s.add_dependency "nokogiri"

  s.files         = `git ls-files`.split("\n")
  # s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
