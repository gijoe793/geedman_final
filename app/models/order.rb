class Order < ActiveRecord::Base
 attr_accessible :bread, :cheese, :veg, :meat, :userid
  belongs_to :user
end
