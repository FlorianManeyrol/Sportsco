class AddPhotoToSport < ActiveRecord::Migration
  def change
    add_column :sports, :photo, :string
  end
end
