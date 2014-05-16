require 'spec_helper'

describe "admins/pages/edit" do
  before(:each) do
    @admins_page = assign(:admins_page, stub_model(Admins::Page))
  end

  it "renders the edit admins_page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admins_page_path(@admins_page), "post" do
    end
  end
end
