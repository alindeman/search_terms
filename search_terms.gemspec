# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "search_terms/version"

Gem::Specification.new do |s|
  s.name        = "search_terms"
  s.version     = SearchTerms::VERSION
  s.authors     = ["Andy Lindeman"]
  s.email       = ["alindeman@gmail.com"]
  s.homepage    = "https://github.com/alindeman/search_terms"
  s.summary     = %q{Extracts search terms from search engine referral URLs}
  s.description = %q{Supports extracting search terms from Google, Bing, Yahoo, DuckDuckGo, AOL, and MSN}

  s.rubyforge_project = "search_terms"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec", "~>2.7.0"
end
