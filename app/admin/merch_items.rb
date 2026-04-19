ActiveAdmin.register MerchItem do
  permit_params :title, :subtitle, :price, :badge, :position

  index do
    selectable_column
    column :position
    column :title
    column :subtitle
    column :price
    column :badge
    actions
  end

  form do |f|
    f.inputs do
      f.input :position, hint: "Display order (1 = first)"
      f.input :title
      f.input :subtitle, hint: "e.g. LP — 180g · Green"
      f.input :price, hint: "e.g. €32"
      f.input :badge, hint: "Optional label, e.g. New, LTD"
    end
    f.actions
  end
end
