require 'spec_helper'

describe Catsay do
  let(:kitty) { Catsay::Cat.new(template: '<%= @message %>') }
  let(:message) { 'Meow, world!' }

  it 'can meow a message' do
    expect(kitty.meow(message).strip).to eq(message)
  end
end
