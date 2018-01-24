class CreateSponserLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :sponser_levels do |t|
      t.string :name
      t.string :color
      t.timestamps
    end
  end
end
