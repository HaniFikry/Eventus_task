class CreateSponsers < ActiveRecord::Migration[5.1]
  def change
    create_table :sponsers do |t|
      t.integer :sponser_level_id
      t.timestamps
    end
  end
end
