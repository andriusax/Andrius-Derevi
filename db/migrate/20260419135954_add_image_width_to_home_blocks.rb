class AddImageWidthToHomeBlocks < ActiveRecord::Migration[8.1]
  def change
    add_column :home_blocks, :image_width, :integer
  end
end
