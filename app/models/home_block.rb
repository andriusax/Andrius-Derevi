class HomeBlock < ApplicationRecord
  has_one_attached :image
  default_scope { order(:position, :created_at) }

  SIZES = %w[large mid small].freeze
  POSITIONS = %w[left center right].freeze
  TEXT_POSITIONS = %w[above below].freeze

  scope :published, -> { where(published: true) }

  def self.ransackable_attributes(auth_object = nil)
    %w[id title subtitle body link position published image_size image_width image_position text_position created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[image_attachment image_blob]
  end
end
