class CreateMediumGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :medium_groups do |t|
      t.string :name
      t.integer :season
      t.text :description

      t.timestamps
    end
  end
end
