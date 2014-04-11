require 'spec_helper'

describe "messages/new" do
  before(:each) do
    assign(:message, stub_model(Message,
      :name => "MyString",
      :contact_number => 1,
      :subject => "MyString",
      :message => "MyText"
    ).as_new_record)
  end

  it "renders new message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", messages_path, "post" do
      assert_select "input#message_name[name=?]", "message[name]"
      assert_select "input#message_contact_number[name=?]", "message[contact_number]"
      assert_select "input#message_subject[name=?]", "message[subject]"
      assert_select "textarea#message_message[name=?]", "message[message]"
    end
  end
end
