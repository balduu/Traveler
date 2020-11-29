class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :writer
      t.text :detail
      t.string :location
      t.decimal :estimated_price

      t.timestamps
    end
  end
end
