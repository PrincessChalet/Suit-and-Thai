class Order < ApplicationRecord
	belongs_to :customer, :optional => true
	has_many :menus
	accepts_nested_attributes_for :customer
	belongs_to :user, :optional => true
	#has_many :customers
end
