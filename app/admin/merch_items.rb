ActiveAdmin.register MerchItem do
  permit_params :title, :subtitle, :price, :badge, :position, :cover_image, :buy_url, :stripe_button_id

  controller do
    before_action only: [:update] do
      params[:merch_item].delete(:cover_image) if params[:merch_item][:cover_image].blank?
    end
  end

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
      f.input :buy_url, hint: "Stripe payment link, e.g. https://buy.stripe.com/..."
      f.input :stripe_button_id, hint: "Stripe Buy Button ID, e.g. buy_btn_xxx (from Stripe dashboard)"
      f.input :cover_image, as: :file, hint: f.object.cover_image.attached? ? image_tag(f.object.cover_image, style: "height: 80px; width: auto; display: block; margin-bottom: 4px; border-radius: 4px;") + "Upload to replace".html_safe : "Upload product photo"
    end
    f.actions
  end
end
