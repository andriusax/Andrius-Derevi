ActiveAdmin.register MerchItem do
  permit_params :title, :subtitle, :price, :badge, :position, :cover_image

  index do
    selectable_column
    column :position
    column :cover_image do |m|
      image_tag m.cover_image, style: "height: 60px; width: auto; border-radius: 4px;" if m.cover_image.attached?
    end
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
      f.input :cover_image, as: :file, hint: f.object.cover_image.attached? ? image_tag(f.object.cover_image, style: "height: 80px; width: auto; display: block; margin-bottom: 4px; border-radius: 4px;") + "Upload to replace".html_safe : "Upload product photo"
    end
    f.actions
  end
end
