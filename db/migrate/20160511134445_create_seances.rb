class CreateSeances < ActiveRecord::Migration
  def change
    create_table :seances do |t|
      t.string :title
      t.string :description
      t.datetime :created_at
      t.string :region
      t.string :departement
      t.string :city
      t.string :cp
      t.integer :number_of_people
      t.boolean :girl_only
      t.datetime :start_at
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
