class CreateChannels < ActiveRecord::Migration[5.0]
  def change
    create_table :channels do |t|
      t.string :name
      t.integer :category_id

      t.timestamps
    end
    add_index :channels, :category_id
  end
end
