class Release < ApplicationRecord
  has_one_attached :cover_image
  default_scope { order(:position) }

  def self.ransackable_attributes(auth_object = nil)
    %w[artist created_at fill format id image listen_url position title updated_at year]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[cover_image_attachment cover_image_blob]
  end
end
