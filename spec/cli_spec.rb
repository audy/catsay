require 'spec_helper'

describe 'CatSay::CLI' do

  let(:cli) { Catsay::CLI }

  it 'can list cats (through API)' do
    expect(cli.send(:cats).size).to_not be(0)
  end

  it 'exists' do
    expect(cli).to_not be(nil)
  end

  it '#cats lists all cats in cats/' do
    expect(cli.cats).to_not be_empty
    expect(cli.cats.size).to eq(Dir['cats/*.erb'].size)
  end
end

describe 'command-line interface' do
  it 'can list cats (through CLI)' do
    expect(`bin/catsay --list`).to_not be_nil
  end

  it 'displays the help' do
    expect(`bin/catsay --help`).to_not be_nil
  end

  it 'can display a cat' do
    expect(`bin/catsay --cat test test`.strip).to eq('A kitty meows, "test"')
  end
end
