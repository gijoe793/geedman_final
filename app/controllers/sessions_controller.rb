class SessionsController < ApplicationController

#sets the title to Sign in
  def new
    @title = "Sign in"
  end


#creates a new session by setting the user based on email
  def create
    
    #user = User.find_by_email(params[:session][:email])
    user = User.authenticate(params[:session][:email],
                            params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid email or password"
      @title = "Sign in"
      render 'new'
    else
      sign_in user
      redirect_to home_path
    end
  end


#calls sign out from the session_helper
  def destroy
     sign_out
     redirect_to root_path
  end

end
