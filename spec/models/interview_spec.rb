require File.dirname(__FILE__) + '/../spec_helper'

describe Interview do
  before(:each) do
    @interview = Interview.new
  end

  it "should be valid" do
    @interview.should be_valid
  end
end
