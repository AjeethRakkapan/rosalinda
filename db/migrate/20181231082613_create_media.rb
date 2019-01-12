class CreateMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :media do |t|
      t.string :name
      t.integer :media_type
      t.integer :episode_number
      t.integer :media_group_id
      t.text :description

      t.timestamps
    end
  end
end
