class User < ActiveRecord::Base
  
  attr_accessible :email, :password
  
  email_regexp = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  
  validates :password, :presence => true
  
  validates :email, :presence => true,
                    :format => { :with => email_regexp}


  has_many :orders


  #before_save :encrpt_password
  
  def has_password?(submitted_password)
    #compare the submitted password with the one stored
    password == submitted_password
  end
  
  
  
  #returns the user if correct password for email
  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(submitted_password)
  end
                    
end
