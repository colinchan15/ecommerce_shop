class AddProductToProductVariants < ActiveRecord::Migration[5.2]
  def change
  	# On table product_variants, add product which has a foreign key of true, and null == false
    add_reference :product_variants, :product, foreign_key: true, null: false
  end
end
