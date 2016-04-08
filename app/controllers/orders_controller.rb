class OrdersController < ApplicationController

	def new
		@food_item = FoodItem.find params[:food_item_id]
	end

	def create
		@food_item = FoodItem.find params[:food_item_id]
		@order = Order.new(order_params)
		@order.food_item = @food_item

		if @order.save
			flash[:success] = "Order Submitted"
			redirect_to food_item_order_path(@food_item, @order)
		else
			# flash[:error] = "Error: #{@order.errors.full_messages.to_sentences}"
			flash[:error] = @order.errors.full_messages.join("<br / >")
			render "new"
		end
	end

	def show
		@order = Order.find(params[:id])
		# @food_item = FoodItem.find_by(params[:food_item_id])
		# @food_item = FoodItem.where('id = ?', :food_item_id)
		@food_item = FoodItem.find_by_id(params[:food_item_id])
		@cost = @food_item.price + 20000
	end

	private
	def order_params
		params.require(:order).permit(:name, :phone, :address)	
	end
end