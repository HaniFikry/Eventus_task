class AddLevelColumnsAndRemoveIdColumns < ActiveRecord::Migration[5.1]
  def change
    add_column :contributors, :partnership_level_name , :string
    add_column :contributors, :sponser_level_color, :string
    remove_column :contributors, :sponser_level_id
    remove_column :contributors, :partnership_level_id
  end
end
