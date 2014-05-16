require 'spec_helper'

describe "admins/pages/show" do
  before(:each) do
    @admins_page = assign(:admins_page, stub_model(Admins::Page))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
