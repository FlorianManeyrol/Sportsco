class AddForeignKeyToSeances < ActiveRecord::Migration
  def change
    add_reference :seances, :sport, index: true, foreign_key: true
  end
end
