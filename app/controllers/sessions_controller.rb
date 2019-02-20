class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.authenticate(params[:email], params[:password])

  	if Suser.present?
      session[:user_id] = @user.id
      redirect_to root_url, notice: 'Вы успешно залогинились'
    else
      render :new
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Вы разлогинились! Ждем Вас снова!'
  end
end
