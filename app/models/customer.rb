class Customer < ApplicationRecord
	has_many :orders
	has_many :menus
    accepts_nested_attributes_for :orders

end
