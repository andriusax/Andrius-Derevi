class CreateCarouselImages < ActiveRecord::Migration[8.1]
  def change
    create_table :carousel_images do |t|
      t.integer :position
      t.string :alt_text
      t.boolean :active

      t.timestamps
    end
  end
end
