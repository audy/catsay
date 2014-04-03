require 'bundler'

require 'tempfile'

$:.unshift File.join(File.dirname(__FILE__), '..')

require 'catsay'

Bundler.require :test, :development

Coveralls.wear!

RSpec.configure do |config|

end
