class MerchItem < ApplicationRecord
  default_scope { order(:position) }

  def self.ransackable_attributes(auth_object = nil)
    %w[badge created_at id position price subtitle title updated_at]
  end
end
