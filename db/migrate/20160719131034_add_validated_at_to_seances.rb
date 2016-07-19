class AddValidatedAtToSeances < ActiveRecord::Migration
  def change
    add_column :seances, :validated_at, :datetime
  end
end
