require File.dirname(__FILE__) + '/../spec_helper'

describe Position do
  before(:each) do
    @position = Position.new
  end

  it "should be valid" do
    @position.should be_valid
  end
end
