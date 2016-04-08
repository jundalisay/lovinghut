class WelcomeController < ApplicationController
	# layout nil
	# layout 'application', :except => :index

	def index
		@food_items = FoodItem.all
		render layout: false
		
		if params[:search]
	      @food_items = FoodItem.where(
	       "lower(name) LIKE lower(?)",
	       "%#{Regexp.escape(params[:search])}%"
	       )
	      # @food_items.class == Array
	      # @food_items = Kaminari.paginate_array(@food_items).page(params[:page]).per(5)
	      # redirect_to menu_index_path 
	    # else
	    #   @food_items = FoodItem.all.order("created_at DESC").page(params[:page]).per(5)
	    end
	end

	def contact_us
		if params[:search] # had to put the search here if the user searches from this controller
	      @food_items = FoodItem.where(
	       "lower(name) LIKE lower(?)",
	       "%#{Regexp.escape(params[:search])}%"
	       )
	      # @food_items.class == Array
	      # @food_items = Kaminari.paginate_array(@food_items).page(params[:page]).per(5)
	      redirect_to menu_index_path(params[:search])
		end
	end

	def react
		@food_items = FoodItem.all		
	end

end