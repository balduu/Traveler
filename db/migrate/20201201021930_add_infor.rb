class AddInfor < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :age, :int
    add_column :users, :hobby, :string
    add_column :users, :local, :string
  end
end
