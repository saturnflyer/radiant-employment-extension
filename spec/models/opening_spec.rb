require File.dirname(__FILE__) + '/../spec_helper'

describe Opening do
  before(:each) do
    @opening = Opening.new
  end

  it "should be valid" do
    @opening.should be_valid
  end
end
