# Frozen-string-literal: true
# Copyright: 2015-2016 Jordon Bedwell - MIT License
# Encoding: utf-8

$LOAD_PATH.unshift(File.expand_path("../lib", __FILE__))
require "simple/ansi/version"

Gem::Specification.new do |spec|
  spec.authors = ["Jordon Bedwell"]
  spec.version = Simple::Ansi::VERSION
  spec.files = %W(Rakefile Gemfile LICENSE) + Dir["{lib,bin}/**/*"]
  spec.description = "A simple ansi library that does only what it needs to do."
  spec.summary = "A basic ansi library that does only what it needs to."
  spec.homepage = "http://github.com/envygeeks/simple-ansi"
  spec.email = ["jordon@envygeeks.io"]
  spec.require_paths = ["lib"]
  spec.name = "simple-ansi"
  spec.license = "MIT"
  spec.has_rdoc = false
  spec.bindir = "bin"
end
