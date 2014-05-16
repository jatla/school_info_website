require 'spec_helper'

describe "admins/pages/new" do
  before(:each) do
    assign(:admins_page, stub_model(Admins::Page).as_new_record)
  end

  it "renders new admins_page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admins_pages_path, "post" do
    end
  end
end
