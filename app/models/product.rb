class Product < ApplicationRecord
	validates :title, presence: true

	# inner join product_categories on products.id = product_categories.product_id
	has_many :product_categories 

	# inner join categories on category.id = product_categories.category_id
	has_many :categories, through: :product_categories
end
