ActiveAdmin.register Release do
  permit_params :title, :artist, :year, :format, :fill, :image, :listen_url, :position

  index do
    selectable_column
    column :position
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
      f.input :image, hint: "Filename from app/assets/images, e.g. hidden-sun-cover.jpg"
      f.input :fill, hint: "CSS placeholder class if no image, e.g. fill-ember"
    end
    f.actions
  end
end
