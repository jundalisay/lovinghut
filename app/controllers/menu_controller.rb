class MenuController < ApplicationController
  

  def index
  
  # @food_items = FoodItem.all
	
  if params[:search]
      @food_items = FoodItem.where(
       "lower(name) LIKE lower(?)",
       "%#{Regexp.escape(params[:search])}%"
       )
      params[:section]
      @sections = %w(Breakfast Lunch Dinner Drinks)
      # if @food_items.nil
      #   @sorry = "Sorry! No item found"
      # end
      # @food_items.class == Array
      # @food_items = Kaminari.paginate_array(@food_items).page(params[:page]).per(5)
          # else
      # @food_items = FoodItem.all.order("created_at DESC").page(params[:page]).per(5)
      render 'index'
    else
    	params[:section]
    	@sections = %w(Breakfast Lunch Dinner Drinks)

  		@food_items = FoodItem.where(section: params[:section]).order("created_at DESC")
  		# @food_items.class == Array
  		# @food_items = Kaminari.paginate_array(@food_items).page(params[:page]).per(5)
  		if params[:section] == nil
  			@food_items = FoodItem.all
      	end
  		# @food_items = FoodItem.by_section(params:[section])
  	 end
  end


	def show		
	end


	def lowhighprice
    params[:section]
    @sections = %w(Breakfast Lunch Dinner Drinks)
    
    @food_items = FoodItem.lowhighprice
    render action: :index
  end

  def highlowprice
    params[:section]
    @sections = %w(Breakfast Lunch Dinner Drinks)
    
    @food_items = FoodItem.highlowprice
    render action: :index
  end

  def abc
    sectionz
    @food_items = FoodItem.abc
    render action: :index
  end

  private
    def sectionz
      params[:section]
      @sections = %w(Breakfast Lunch Dinner Drinks)
    end
end