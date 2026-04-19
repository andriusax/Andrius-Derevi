class CreateMerchItems < ActiveRecord::Migration[8.1]
  def change
    create_table :merch_items do |t|
      t.string :title
      t.string :subtitle
      t.string :price
      t.string :badge
      t.integer :position

      t.timestamps
    end
  end
end
