class CreateHomeBlocks < ActiveRecord::Migration[8.1]
  def change
    create_table :home_blocks do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.string :image_size
      t.string :image_position
      t.integer :position
      t.boolean :published, default: true, null: false

      t.timestamps
    end
  end
end
