class ConsolidateShowDate < ActiveRecord::Migration[8.1]
  def up
    add_column :shows, :performed_on, :date

    Show.reset_column_information
    Show.find_each do |show|
      date = show.full_date
      show.update_columns(performed_on: date) if date
    end

    remove_column :shows, :date
    remove_column :shows, :month
    remove_column :shows, :year
  end

  def down
    add_column :shows, :date, :string
    add_column :shows, :month, :string
    add_column :shows, :year, :string

    Show.reset_column_information
    Show.find_each do |show|
      next unless show.performed_on
      show.update_columns(
        date: show.performed_on.day.to_s,
        month: show.performed_on.strftime("%b"),
        year: show.performed_on.year.to_s
      )
    end

    remove_column :shows, :performed_on
  end
end
