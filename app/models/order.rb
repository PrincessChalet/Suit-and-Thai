class Order < ApplicationRecord
	belongs_to :customer
	has_many :menus
	accepts_nested_attributes_for :customer

	#has_many :customers
end
