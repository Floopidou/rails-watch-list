class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: { minimum: 6 }
  validates :list, presence: true
  validates :movie, presence: true
  validates_uniqueness_of :list, scope: :movie
end
