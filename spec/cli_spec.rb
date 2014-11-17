require 'spec_helper'

describe 'CatSay::Cli' do

  let (:cli) { Catsay::CLI }

  it 'can list cats (through API)' do
    expect(cli.send(:cats).size).to_not be(0)
  end

  it 'exists' do
    expect(cli).to_not be(nil)
  end

end

describe 'command-line interface' do

  it 'can list cats (through CLI)' do
    `bin/catsay --list`.should_not be_nil
  end

  it 'displays the help' do
    `bin/catsay --help`.should_not be_nil
  end

  it 'can display a cat' do
    `bin/catsay --cat test test`.strip.should == 'A kitty meows, "test"'
  end
end
