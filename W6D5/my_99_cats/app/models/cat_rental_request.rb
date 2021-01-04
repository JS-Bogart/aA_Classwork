require 'action_view'
class CatRentalRequest < ApplicationRecord
    include ActionView::Helpers::DateHelper
    
    validates :status, :start_date, :end_date, presence: true
    validates :cat_id, presence: true, uniqueness: true
    # validates :does_not_overlap_approved_request

    belongs_to :cat,
        class_name: :Cat,
        foreign_key: :cat_id,
        primary_key: :id

    def overlapping_requests
        CatRentalRequests
            .select(id: self.id)
            .where(cat_id: cat_id)
            .where.not('start_date > :end_date OR end_date < :start_date',
                        start_date: start_date, end_date: end_date)
    end

    def overlapping_approved_requests
        overlapping_requests.where('status = \'APPROVED\'')
    end

    def does_not_overlap_approved_request
        overlapping_approved_requests.exists?
    end

end
