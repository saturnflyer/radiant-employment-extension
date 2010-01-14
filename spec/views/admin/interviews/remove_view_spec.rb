require File.dirname(__FILE__) + '/../../../spec_helper'

describe "/admin/interviews/remove" do
  before do
    render 'admin/interviews/remove'
  end
  
  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', 'Find me in app/views/admin/interviews/remove.rhtml')
  end
end
