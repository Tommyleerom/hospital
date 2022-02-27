class Appointment < ApplicationRecord
  belongs_to :doctor, optional: true
  belongs_to :user, optional: true

  enum status: [:active, :inactive, :not_set]

  validates :appointment_date, presence: true
end
