ActiveAdmin.register Show do
  permit_params :performed_on, :venue, :city, :band, :status, :sold_out, :ticket_url

  index do
    selectable_column
    column :performed_on
    column :band
    column :venue
    column :city
    column :status
    column :sold_out
    column "When" do |show|
      if show.upcoming?
        status_tag "Upcoming", class: "green"
      else
        status_tag "Past", class: "gray"
      end
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :performed_on, as: :date_picker
      f.input :band, hint: "e.g. 12 Tribes of Mars, Solo"
      f.input :venue
      f.input :city, hint: "e.g. Berlin, DE"
      f.input :status, hint: "e.g. Tickets, SOLD OUT, Festival, Low stock"
      f.input :sold_out
      f.input :ticket_url, hint: "Link to ticket page (optional)"
    end
    f.actions
  end
end
