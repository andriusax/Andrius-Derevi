class AddBuyUrlToMerchItems < ActiveRecord::Migration[8.1]
  def change
    add_column :merch_items, :buy_url, :string
  end
end
