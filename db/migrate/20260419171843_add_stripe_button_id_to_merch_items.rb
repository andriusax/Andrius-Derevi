class AddStripeButtonIdToMerchItems < ActiveRecord::Migration[8.1]
  def change
    add_column :merch_items, :stripe_button_id, :string
  end
end
