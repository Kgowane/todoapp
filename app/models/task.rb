class Task < ApplicationRecord
  belongs_to :list
  validates :task, presence: true, length: { minimum: 2}

  scope :done, -> { where(status: 'true').order(created_at: :desc) }
  scope :not_done, -> { where(status: 'false').order(created_at: :desc) }


end
