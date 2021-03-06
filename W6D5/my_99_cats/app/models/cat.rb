require 'action_view'
class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper
    COLORS = %w(brown black white orange)
    
    validates :color, inclusion: COLORS
    validates :sex, inclusion: %w(M F)
    validates :birth_date, presence: true

    def age
        current_year = Time.now.year
        current_year - self.birth_date.year
    end

    has_many :rental_requests,
        class_name: :CatRentalRequest,
        foreign_key: :cat_id,
        primary_key: :id,
        dependent: :destroy

end
