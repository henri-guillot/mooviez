class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  # A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
  validates :movie_id, uniqueness: {scope: :list_id, message: "is already in the list"}
  # The comment of a bookmark cannot be shorter than 6 characters.
  validates :comment, length: { minimum: 6 }
end
