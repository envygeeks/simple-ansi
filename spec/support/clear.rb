# Frozen-string-literal: true
# Copyright: 2015-2016 Jordon Bedwell - MIT License
# Encoding: utf-8

RSpec.configure do |config|
  config.before do |example|
    unless example.metadata[:clear]
      allow(Simple::Ansi).to receive(:clear).and_return nil
    end
  end
end
