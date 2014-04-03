require 'spec_helper'

describe 'command-line interface' do
  it 'displays the help' do
    `bin/catsay --help`.should_not be_nil
  end

  it 'can display a cat' do
    `bin/catsay --cat test test`.strip.should == 'A kitty meows, "test"'
  end
end
