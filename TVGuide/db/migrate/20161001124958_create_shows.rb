class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :name
      t.integer :channel_id

      t.timestamps
    end
    add_index :shows, :channel_id
  end
end
