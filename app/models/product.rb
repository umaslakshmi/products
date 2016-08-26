class Product < ActiveRecord::Base
	belongs_to :category
	has_many :comments
end
