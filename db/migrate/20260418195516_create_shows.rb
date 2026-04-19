class CreateShows < ActiveRecord::Migration[8.1]
  def change
    create_table :shows do |t|
      t.string :date
      t.string :month
      t.string :year
      t.string :venue
      t.string :city
      t.string :status
      t.boolean :sold_out
      t.string :ticket_url

      t.timestamps
    end
  end
end
