class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
  # You can’t delete a movie if it is referenced in at least one bookmark.

end
