class AddCoordinatesToSeances < ActiveRecord::Migration
  def change
    add_column :seances, :latitude, :float
    add_column :seances, :longitude, :float
  end
end
