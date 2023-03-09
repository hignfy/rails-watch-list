class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie_id, :list_id, presence: true
  validates :movie_id, uniqueness: { scope: :list_id, message: 'This movie is already on the list' }
  # the movie is unique with the list
  validates :comment, length: { minimum: 6 }
end
