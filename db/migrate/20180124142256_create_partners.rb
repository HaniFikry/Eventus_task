class CreatePartners < ActiveRecord::Migration[5.1]
  def change
    create_table :partners do |t|
      t.integer :partnership_level_id
      t.timestamps
    end
  end
end
