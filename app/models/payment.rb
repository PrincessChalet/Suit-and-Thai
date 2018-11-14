class Payment < ApplicationRecord
has_many :orders, through: :customers
has_many :customers
end
