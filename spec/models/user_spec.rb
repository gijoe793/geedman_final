require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
  
  before(:each) do
    @attr = {
      :email="user@example.com"
      :password = "temp"
    }
  end
  
  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end
  
  describe "authenticate user" do
    it "should return nil with invalid password" do
      wrong_password_user = authenticate(@attr[:email],"wrongPass")
      wrong_password_use.should be_nil
    end
    
    it "should retun nil with the invalid email" do
      wrong_email_user = authenticate("wron@email.com", @attr[:password])
      wrong_email_user.should be_nil
    end
    
    it "should return the user on correct email,password" do
      corect_user = authenticate(@attr[:email],@attr[:password])
      corect_use.should == @user
    end
  end
end
