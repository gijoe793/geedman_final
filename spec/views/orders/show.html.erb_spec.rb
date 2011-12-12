require 'spec_helper'

describe "orders/show.html.erb" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :bread => "Bread",
      :cheese => "Cheese",
      :meat => "Meat",
      :veg => "Veg",
      :userid => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Bread/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cheese/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Meat/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Veg/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
