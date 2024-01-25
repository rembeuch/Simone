class PotatoPrice < ApplicationRecord
    validates :time, presence: true, uniqueness: true
    validates :value, presence: true, numericality: { greater_than_or_equal_to: 0 }, format: { with: /\A\d+\.\d{2}\z/ }
    validate :time_cannot_be_in_the_future
  
    private
  
    def time_cannot_be_in_the_future
      errors.add(:time, "can't be in the future") if time.present? && time > Time.now
    end
end
  