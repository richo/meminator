Gem::Specification.new do |s|
  s.name        = "meminator"
  s.version     = "0.0.4"
  s.authors     = ["Eric Hodel", "Rich Healey"]
  s.email       = ["richo@psych0tik.net"]
  s.homepage    = "http://github.com/richoH/meminator"
  s.summary     = "API to retrieve urls for memes"
  s.description = s.summary

  s.add_development_dependency "mocha"
  s.add_development_dependency "rspec"

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end
