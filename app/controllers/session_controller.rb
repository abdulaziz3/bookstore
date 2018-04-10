class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
	  if user && user.authenticate(params[:session][:password])
		  session[:user_id] = user.id
		  flash[:success] = "Welcome back"
		  redirect_to session[:return_to] || root_path
	  else
		  flash[:danger] = "Invalid email / password "
		  render'new'
	  end
  end

  def destroy
    if signed_in?
		  session[:user_id] = nil
	  else
		  flash[:notice] = "You need to sign in"
	  end
	  redirect_to root_path
  end
  end
end
