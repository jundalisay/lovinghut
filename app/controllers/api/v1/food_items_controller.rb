class Api::V1::FoodItemsController < Api::V1::BaseController
  def index
    respond_with FoodItem.all
  end

  def create
    respond_with :api, :v1, FoodItem.create(food_item_params)
  end

  def destroy
    respond_with FoodItem.destroy(params[:id])
  end

  def update
    food_item = FoodItem.find(params["id"])
    food_item.update_attributes(food_item_params)
    respond_with food_item, json: food_item
  end

 private

  def food_item_params
    params.require(:food_item).permit(:name, :description, :price, :section, :image_url, :cuisine)
  end
end