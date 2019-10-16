class OrdersController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]


  def show
    @user = current_user
    @order = @user.orders.find(params[:id])
  end

  def create
   @order = current_user.orders.build(order_params)
   if @order.save
     flash[:success] = "Order created!"
     redirect_to current_user
   else
     render 'static_pages/home'
   end
 end

  def destroy
  end

  private

    def order_params
      params.require(:order).permit(:cone,:flavor)
    end

end
