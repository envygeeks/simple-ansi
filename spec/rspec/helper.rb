# Frozen-string-literal: true
# Copyright: 2015-2016 Jordon Bedwell - MIT License
# Encoding: utf-8

require "support/coverage"
require "luna/rspec/formatters/checks"
require "support/helpers"
require "simple/ansi"

Dir[File.expand_path("../../support/**/*.rb", __FILE__)].each do |f|
  require f
end
