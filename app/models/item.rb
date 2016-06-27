class Item < ActiveRecord::Base
	belongs_to :cart
	scope :sorted, lambda { order("items.item_id ASC") }
end
