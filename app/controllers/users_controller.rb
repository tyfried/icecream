class UsersController < ApplicationController

  def home
    @order = current_user.orders.build if logged_in?
  end

  def show
    @user = User.find(params[:id])
    @orders = @user.orders
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      flash[:success] = "Welcome to Tyler's Ice Cream Shop!"
      redirect_to(@user)
    else
      render('new')
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
