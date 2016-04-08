class FoodItemsController < ApplicationController
  before_action :set_food_item, only: [:show, :edit, :update, :destroy]
  impressionist :actions=>[:show, :index]

  def index
    if params[:search]
      @food_items = FoodItem.where(
       "lower(name) LIKE lower(?)",
       "%#{Regexp.escape(params[:search])}%"
       )
    else
      @food_items = FoodItem.all
    end
  end

  def show
    impressionist(@food_item)

    @reviews = Review.find(params[:id])
      if @food_item.reviews.blank? 
        @average_review = 0
      else
        @average_review = @food_item.reviews.average(:rating).round(2)
      end

    if @average_review == nil
        @average_review = 0
      else
        @average_review = @food_item.reviews.average(:rating).round(2)
    end

    if params[:search]
      @food_items = FoodItem.where(
       "lower(name) LIKE lower(?)",
       "%#{Regexp.escape(params[:search])}%"
       )
      params[:section]
      @sections = %w(Breakfast Lunch Dinner Drinks)
      render 'index'
    end
  end

  def new
    @food_item = FoodItem.new
  end

  def edit
  end

  def create
    @food_item = FoodItem.new(food_item_params)

    respond_to do |format|
      if @food_item.save
        format.html { redirect_to @food_item, notice: 'Food item was successfully created.' }
        format.json { render :show, status: :created, location: @food_item }
      else
        format.html { render :new }
        format.json { render json: @food_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @food_item.update(food_item_params)
        format.html { redirect_to @food_item, notice: 'Food item was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_item }
      else
        format.html { render :edit }
        format.json { render json: @food_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @food_item.destroy
    respond_to do |format|
      format.html { redirect_to food_items_url, notice: 'Food item was successfully destroyed.' }
      format.json { head :no_content }

    end
  end

  private
    def set_food_item
      @food_item = FoodItem.find(params[:id])
    end

    def food_item_params
      params.require(:food_item).permit(:name, :description, :price, :section, :image_url, :cuisine)
    end

    def find_review
      @reviews = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:rating, :rev, :food_item_id)
    end
end