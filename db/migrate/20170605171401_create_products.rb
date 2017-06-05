class CreateProducts < ActiveRecord::Migration[5.0]
  def up
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :price
      t.integer :category_id
      t.boolean :published, default: true
      t.string :image
      t.string :alt
      t.string :title

      t.timestamps null: true
    end
  end

  def down
    drop_table :products
  end
end
