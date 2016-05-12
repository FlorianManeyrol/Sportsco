class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :sports, :type, :name
  end
end
