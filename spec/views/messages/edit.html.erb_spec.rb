require 'spec_helper'

describe "messages/edit" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :name => "MyString",
      :contact_number => 1,
      :subject => "MyString",
      :message => "MyText"
    ))
  end

  it "renders the edit message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", message_path(@message), "post" do
      assert_select "input#message_name[name=?]", "message[name]"
      assert_select "input#message_contact_number[name=?]", "message[contact_number]"
      assert_select "input#message_subject[name=?]", "message[subject]"
      assert_select "textarea#message_message[name=?]", "message[message]"
    end
  end
end
