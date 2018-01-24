class AddColumnsToTable < ActiveRecord::Migration[5.1]
  def change
    add_column :contributors, :partnership_level_color , :string
    add_column :contributors, :sponser_level_name, :string
  end
end
