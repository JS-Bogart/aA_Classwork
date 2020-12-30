class Artwork < ApplicationRecord
    validates :title, :artist_id, :image_url, presence: true
    validates "#{:title}#{:artist_id}", uniqueness: true
    validates :image_url, uniqueness: true
end
