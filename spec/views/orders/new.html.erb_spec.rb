require 'spec_helper'

describe "orders/new.html.erb" do
  before(:each) do
    assign(:order, stub_model(Order,
      :bread => "MyString",
      :cheese => "MyString",
      :meat => "MyString",
      :veg => "MyString",
      :userid => ""
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path, :method => "post" do
      assert_select "input#order_bread", :name => "order[bread]"
      assert_select "input#order_cheese", :name => "order[cheese]"
      assert_select "input#order_meat", :name => "order[meat]"
      assert_select "input#order_veg", :name => "order[veg]"
      assert_select "input#order_userid", :name => "order[userid]"
    end
  end
end
