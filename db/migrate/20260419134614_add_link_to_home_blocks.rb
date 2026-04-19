class AddLinkToHomeBlocks < ActiveRecord::Migration[8.1]
  def change
    add_column :home_blocks, :link, :string
  end
end
