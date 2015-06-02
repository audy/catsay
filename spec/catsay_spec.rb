require 'spec_helper'

describe Catsay do
  let(:kitty) { Catsay::Cat.new(template: '<%= @message %>') }
  let(:message) { 'Meow, world!' }

  it 'can meow a message' do
    kitty.meow(message).strip.should == message
  end
end
