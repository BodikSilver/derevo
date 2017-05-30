class CreatePosts < ActiveRecord::Migration[5.0]
  def up
    create_table :posts do |t|
      t.string :name
      t.string :price
      t.string :image
      t.string :description
      t.boolean :is_published, default: true

      t.timestamps null: true
    end
  end

  def down
    drop_table :posts
  end
end
