class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  # if I have a list, I can do list.bookmarks
  # give me back an array of bookmarks for this list
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: true
end
