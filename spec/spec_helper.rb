require 'bundler'

require 'tempfile'

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..')

require 'catsay'

Bundler.require :test, :development

Coveralls.wear!

RSpec.configure do |_config|
end
