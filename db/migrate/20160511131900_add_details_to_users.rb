class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birth, :integer
    add_column :users, :sex, :string
    add_column :users, :picture, :string
    add_column :users, :phone_number, :integer
    add_column :users, :presentation, :string
    add_column :users, :admin, :boolean
  end
end
