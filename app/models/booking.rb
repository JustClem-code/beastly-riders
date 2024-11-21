class Booking < ApplicationRecord
  belongs_to :beast
  belongs_to :user
  validates :user_id, presence: true
  validates :beast_id, presence: true
  validates :date_start, presence: true
  validates :date_end, presence: true
  # Le statut peut être : "created", "validated", "payed", "canceled"
  validates :status, inclusion: { in: %w[created validated modified payed canceled] }

  # validates :date_end_date_start_date

  # private

  # def date_end_date_start_date
  #   return if end_date.blank? || start_date.blank?

  #   if end_date < start_date
  #     errors.add(:end_date, "must be after the start date")
  #   end
  # end
end
