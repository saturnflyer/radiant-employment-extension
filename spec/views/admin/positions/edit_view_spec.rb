require File.dirname(__FILE__) + '/../../../spec_helper'

describe "/admin/positions/edit" do
  before do
    render 'admin/positions/edit'
  end
  
  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', 'Find me in app/views/admin/positions/edit.rhtml')
  end
end
