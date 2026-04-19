class AddTextPositionToHomeBlocks < ActiveRecord::Migration[8.1]
  def change
    add_column :home_blocks, :text_position, :string
  end
end
