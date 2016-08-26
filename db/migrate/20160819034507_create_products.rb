class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :pricing

      t.timestamps

    end
    add_reference :products, :category, index:true

  end
end
