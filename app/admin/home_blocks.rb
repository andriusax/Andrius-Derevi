ActiveAdmin.register HomeBlock do
  permit_params :title, :subtitle, :body, :image_size, :image_width, :image_position, :text_position, :position, :published, :image, :link

  controller do
    before_action only: [:update] do
      params[:home_block].delete(:image) if params[:home_block][:image].blank?
    end
  end

  index do
    selectable_column
    column :position
    column :image do |b|
      image_tag b.image, style: "height: 60px; width: auto; border-radius: 4px;" if b.image.attached?
    end
    column :title
    column :image_size
    column :image_position
    column :published
    actions
  end

  form do |f|
    f.inputs "Content" do
      f.input :position, hint: "Display order (1 = first)"
      f.input :published
      f.input :title
      f.input :subtitle
      f.input :body, as: :text, input_html: { rows: 6 }, hint: "Main body text"
    end
    f.inputs "Image" do
      f.input :image, as: :file, hint: f.object.image.attached? ? image_tag(f.object.image, style: "height: 80px; width: auto; display: block; margin-bottom: 4px; border-radius: 4px;") + "Upload to replace".html_safe : "Upload image"
      f.input :link, hint: "Optional URL — clicking the image will open this link"
      f.input :image_size, as: :select, collection: HomeBlock::SIZES, include_blank: false, hint: "large = full width, mid = half width, small = thumbnail"
      f.input :image_width, as: :number, hint: "Optional: override width as a percentage (1–100). Overrides the size preset above."
      f.input :image_position, as: :select, collection: HomeBlock::POSITIONS, include_blank: false, hint: "Where the image sits relative to the text"
      f.input :text_position, as: :select, collection: HomeBlock::TEXT_POSITIONS, include_blank: false, hint: "Text above or below the image"
    end
    f.actions
  end
end
