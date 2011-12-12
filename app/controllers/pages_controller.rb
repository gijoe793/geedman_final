class PagesController < ApplicationController
  def home
    @title = "home"
  end

  def login
    @title = "login"
  end

  def confirm
    @title = "confirm"
  end
  
  
end
