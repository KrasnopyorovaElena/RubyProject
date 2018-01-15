class Task < ApplicationRecord
  validates :title, :status, presence: true
  
  enum status: [:open, :in_progress, :reopened, :resolved, :closed]

  belongs_to :author,   class_name: 'User'
  belongs_to :executor, class_name: 'User', optional: true
  belongs_to :project, optional: true

  has_many :comments
end
