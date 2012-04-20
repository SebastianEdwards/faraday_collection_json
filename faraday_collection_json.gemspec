# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "faraday_collection_json/version"

Gem::Specification.new do |s|
  s.name        = "faraday_collection_json"
  s.version     = FaradayCollectionJSON::VERSION
  s.authors     = ["Sebastian Edwards"]
  s.email       = ["sebastian@uprise.co.nz"]
  s.homepage    = ""
  s.summary     = %q{Collection+JSON parsing middleware for faraday.}
  s.description = s.summary

  s.rubyforge_project = "faraday_collection_json"

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency "faraday_middleware"
  s.add_dependency "collection-json"
end
