class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.references :product, index: true

      t.timestamps
    end
  end
end
