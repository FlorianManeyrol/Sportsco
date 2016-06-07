class AddAddressToSeances < ActiveRecord::Migration
  def change
    add_column :seances, :address, :string
  end
end
