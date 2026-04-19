ActiveAdmin.register CarouselImage do
  permit_params :position, :alt_text, :active, :image

  index do
    selectable_column
    column :position
    column :image do |c|
      image_tag c.image, style: "height: 60px; width: auto; border-radius: 4px;" if c.image.attached?
    end
    column :alt_text
    column :active
    actions
  end

  form do |f|
    f.inputs do
      f.input :position, hint: "Display order (lower = first)"
      f.input :image, as: :file, hint: f.object.image.attached? ? image_tag(f.object.image, style: "height: 80px; width: auto; display: block; margin-bottom: 4px; border-radius: 4px;") + "Upload to replace".html_safe : "Upload photo for carousel"
      f.input :alt_text, hint: "Short description for accessibility"
      f.input :active, hint: "Uncheck to hide from carousel"
    end
    f.actions
  end
end
