class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :prptotype

  validates :text, presence: true
end
