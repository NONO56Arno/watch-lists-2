class Bookmark < ApplicationRecord
  belongs_to :movies, dependent: :destroy
  belongs_to :lists

  validates :comment, length: { minimum: 6 }
  validates_associated :movie_id, :list_id, uniqueness: true
  # validates :movie_id, uniqueness: { scope: list_id, message: "is already in the list" }
end
