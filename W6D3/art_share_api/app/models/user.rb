class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    has_many :artworks,
        class_name: :Artwork,
        foreign_key: :artist_id,
        primary_key: :id

    has_many :viewings,
        class_name: :ArtworkShare,
        foreign_key: :viewer_id,
        primary_key: :id
        
    has_many :shared_artworks,
        through: :viewings,
        source: :artwork
    

end
