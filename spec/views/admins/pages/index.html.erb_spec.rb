require 'spec_helper'

describe "admins/pages/index" do
  before(:each) do
    assign(:admins_pages, [
      stub_model(Admins::Page),
      stub_model(Admins::Page)
    ])
  end

  it "renders a list of admins/pages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
