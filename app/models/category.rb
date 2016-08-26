class Category < ActiveRecord::Base
	has_many :products
	alias_attribute :category_name, :name
end
