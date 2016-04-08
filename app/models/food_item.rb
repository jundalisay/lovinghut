class FoodItem < ActiveRecord::Base
	is_impressionable
	has_many :reviews
	
	validates :name, :section, :price, :image_url, presence: true

	scope :abc, ->{ order("name ASC") }
	scope :lowhighprice, ->{ order("price ASC") }
	scope :highlowprice, ->{ order("price DESC") }


	def self.by_section(section)
		where(section: section) #where food_items.section = #{section}
	end

end