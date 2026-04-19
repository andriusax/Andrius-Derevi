class AddBandToShows < ActiveRecord::Migration[8.1]
  def change
    add_column :shows, :band, :string
  end
end
