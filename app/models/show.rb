class Show < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    %w[band city created_at id performed_on sold_out status ticket_url updated_at venue]
  end

  def upcoming?
    performed_on.nil? || performed_on >= Date.today
  end

  def past?
    !upcoming?
  end

  scope :upcoming, -> { all.select(&:upcoming?).sort_by { |s| s.performed_on || Date.new(9999, 12, 31) } }
  scope :past,     -> { all.select(&:past?).sort_by { |s| s.performed_on || Date.new(1, 1, 1) }.reverse }
end
