ActiveAdmin.register Release do
  permit_params :title, :artist, :year, :format, :fill, :image, :listen_url, :position, :cover_image

  index do
    selectable_column
    column :position
    column :cover_image do |r|
      image_tag r.cover_image, style: "height: 60px; width: auto; border-radius: 4px;" if r.cover_image.attached?
    end
    column :title
    column :artist
    column :year
    column :format
    column :listen_url
    actions
  end

  form do |f|
    f.inputs do
      f.input :position, hint: "Display order (1 = first)"
      f.input :title
      f.input :artist, hint: "Leave blank if solo release"
      f.input :year
      f.input :format, hint: "e.g. LP / Digital, EP, LP / CD"
      f.input :listen_url, hint: "Link to streaming/purchase page"
      f.input :cover_image, as: :file, hint: f.object.cover_image.attached? ? image_tag(f.object.cover_image, style: "height: 80px; width: auto; display: block; margin-bottom: 4px; border-radius: 4px;") + "Upload to replace".html_safe : "Upload cover art (replaces CSS placeholder)"
      f.input :fill, hint: "CSS placeholder class shown when no image uploaded, e.g. fill-ember"
    end
    f.actions
  end
end
