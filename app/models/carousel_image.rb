class CarouselImage < ApplicationRecord
  has_one_attached :image
  default_scope { order(:position, :created_at) }

  scope :active, -> { where(active: true) }

  def self.ransackable_attributes(auth_object = nil)
    %w[id position alt_text active created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    ["image_attachment", "image_blob"]
  end
end
