class Movie < ApplicationRecord
  has_many :bookmarks
  # if I have a movie, I can do movie.bookmarks
  # give me back an array of bookmarks for this movie
  # has_many :lists, through: :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
