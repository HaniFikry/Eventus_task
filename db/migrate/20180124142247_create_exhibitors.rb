class CreateExhibitors < ActiveRecord::Migration[5.1]
  def change
    create_table :exhibitors do |t|

      t.timestamps
    end
  end
end
