ActiveAdmin.register Video do
  permit_params :title, :youtube_id, :position

  index do
    selectable_column
    column :position
    column :title
    column :youtube_id
    column :preview do |video|
      link_to "Watch", "https://youtu.be/#{video.youtube_id}", target: "_blank"
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :title, hint: "e.g. 12 Tribes of Mars – Live at Berghain"
      f.input :youtube_id, hint: "The part after ?v= or youtu.be/ e.g. VP1am9q0Ijo"
      f.input :position, hint: "Display order (lower = first)"
    end
    f.actions
  end
end
