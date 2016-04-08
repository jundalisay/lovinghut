class ReviewsController < ApplicationController
  before_action :find_food_item

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @food_item.reviews << @review
    
    if @review.save
      redirect_to food_item_path(@food_item)
    else 
      render 'new'
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to food_item_path(@food_item)
    else
      render 'edit'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to food_item_path(@food_item)
  end

  private
  	def review_params
  	  params.require(:review).permit(:rating, :rev)
    end

    def find_food_item
  	  @food_item = FoodItem.find(params[:food_item_id])
    end

end