require 'spec_helper'

describe 'command-line interface' do
  it 'displays the help' do
    `bin/catsay --help`.should_not be_nil
  end
end
