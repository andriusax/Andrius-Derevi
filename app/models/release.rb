class Release < ApplicationRecord
  default_scope { order(:position) }

  def self.ransackable_attributes(auth_object = nil)
    %w[artist created_at fill format id image listen_url position title updated_at year]
  end
end
