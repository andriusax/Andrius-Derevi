class HomeBlock < ApplicationRecord
  has_one_attached :image
  default_scope { order(:position, :created_at) }

  SIZES = %w[large mid small].freeze
  POSITIONS = %w[left center right].freeze

  scope :published, -> { where(published: true) }

  def self.ransackable_attributes(auth_object = nil)
    %w[id title subtitle body position published image_size image_position created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[image_attachment image_blob]
  end
end
