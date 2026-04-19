class CreateReleases < ActiveRecord::Migration[8.1]
  def change
    create_table :releases do |t|
      t.string :title
      t.string :artist
      t.string :year
      t.string :format
      t.string :fill
      t.string :image
      t.string :listen_url
      t.integer :position

      t.timestamps
    end
  end
end
