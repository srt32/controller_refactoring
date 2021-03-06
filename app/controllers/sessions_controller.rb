class SessionsController < ApplicationController
  layout "bank_buddy"

  def new
    @user = User.new
  end

  def create
    @user = User.authenticate(params[:email], params[:password])
    if @user && current_order.id
      session[:user_id] = @user.id
      current_order.save
      flash[:notice] = "Logged in!"
      redirect_to order_path(current_order.id)
    elsif @user
      session[:user_id] = @user.id
      flash[:notice] = "Logged in!"
      redirect_to root_path
    else
      @user = User.new
      flash.now.alert = "Invalid email or password"
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_url, :notice => "Logged out!"
  end

end
