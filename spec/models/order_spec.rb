require 'spec_helper'

describe Order do
  pending "add some examples to (or delete) #{__FILE__}"
  
  before(:each) do
    tempUser = {:email => "jdoe@cs.utsa.edu", :password => temp}
    
    @tempOrder = {:bread => "White", :cheese => "Swiss", :meat => "Tuna", :veg => "Onions", :userid => 1}
    
    @user = User.create!(tempUser)
    
  end
  
  it "should create a new order when valid info passed" do
    @order = Order.create(@tempOrder)
  end
  
end
