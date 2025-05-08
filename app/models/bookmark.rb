class Bookmark < ApplicationRecord
  belongs_to :movie
  # if I do a bookmark of a movie, I can see bookmark.movie gives back movie instance
  belongs_to :list
  # if I do a bookmark of a movie, I can see bookmark.list gives back list instance

  validates :comment, length: { minimum: 6 }
  validates :movie, presence: true
  validates :list, presence: true
  validates :movie_id, uniqueness: { scope: :list_id, message: 'has already been added to this list' }
end
