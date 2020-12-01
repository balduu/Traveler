class CreateTravels < ActiveRecord::Migration[6.0]
  def change
    create_table :travels do |t|
      t.string :title
      t.string :writer
      t.string :detail
      t.string :location
      t.decimal :estimated_price

      t.timestamps
    end
  end
end
