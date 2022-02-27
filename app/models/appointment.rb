class Appointment < ApplicationRecord
  belongs_to :doctor, optional: true
  belongs_to :user, optional: true

  enum :status, { not_set: 0, active: 1, archived: 2}

# conversation.update! status: 0
# conversation.active!
# conversation.active? # => true
# conversation.status  # => "active"

# # conversation.update! status: 1
# conversation.archived!
# conversation.archived? # => true
# conversation.status    # => "archived"

# # conversation.status = 1
# conversation.status = "archived"

# conversation.status = nil
# conversation.status.nil? # => true
# conversation.status      # => nil

  validates :appointment_date, presence: true
end
