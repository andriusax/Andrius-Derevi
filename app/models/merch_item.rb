class MerchItem < ApplicationRecord
  has_one_attached :cover_image
  default_scope { order(:position) }

  def self.ransackable_attributes(auth_object = nil)
    %w[badge buy_url stripe_button_id created_at id position price subtitle title updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[cover_image_attachment cover_image_blob]
  end
end
