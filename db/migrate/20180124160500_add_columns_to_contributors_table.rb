class AddColumnsToContributorsTable < ActiveRecord::Migration[5.1]
  def change
    add_column :contributors, :partnership_level_id , :integer
    add_column :contributors, :sponser_level_id, :integer
  end
end
