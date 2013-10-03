require 'tempfile'

$:.unshift File.join(File.dirname(__FILE__), '..')

require 'catsay'

Bundler.require :test, :development

RSpec.configure do |config|

end
