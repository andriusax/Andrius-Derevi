class Video < ApplicationRecord
  default_scope { order(:position, :created_at) }

  before_save :extract_youtube_id

  def self.ransackable_attributes(auth_object = nil)
    %w[id title youtube_id position created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end

  private

  def extract_youtube_id
    return if youtube_id.blank?
    if youtube_id =~ /(?:v=|youtu\.be\/|embed\/)([a-zA-Z0-9_-]{11})/
      self.youtube_id = $1
    end
  end
end
