class AddValToSeances < ActiveRecord::Migration
  def change
    add_column :seances, :val, :boolean, default: false
  end
end
