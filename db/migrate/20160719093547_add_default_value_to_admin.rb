class AddDefaultValueToAdmin < ActiveRecord::Migration
  def up
    change_column :users, :admin, :boolean, default: false, null: false
  end
end
