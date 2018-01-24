class CreateContributors < ActiveRecord::Migration[5.1]
  def change
    create_table :contributors do |t|
      t.string :type
      t.string :name
      t.string :headline
      t.string :description
      t.string :industry
      t.timestamps
    end
  end
end
