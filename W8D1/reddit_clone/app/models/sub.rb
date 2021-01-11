class Sub < ApplicationRecord

    validates :title, :description, presence: true
    validates :title, uniqueness: true

    belongs_to :moderator,
        foreign_key: :moderator_id,
        class_name: :User

    has_many :sub_posts,
        foreign_key: :sub_id,
        class_name: :Post_Sub

    has_many :posts,
        through: :sub_posts,
        source: :posts
end
