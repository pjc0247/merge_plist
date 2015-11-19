# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "merge_plist"
  s.version = "1.0.8"

  s.authors = ["pjc0247"]
  s.date = "2015-11-19"
  s.description = "merge_plist"
  s.email = ["pjc0247@naver.com"]
  s.homepage = "http://github.com/pjc0247/merge_plist"
  s.require_paths = ["lib"]
  s.rubyforge_project = "merge_plist"
  s.summary = "merge_plist"
  s.files = Dir["{lib}/**/*.rb"]
  s.executables = ["merge_plist"]
  
  s.add_development_dependency "plist"
  s.add_development_dependency "deep_merge"
end