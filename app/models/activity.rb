class Activity < ApplicationRecord
  belongs_to :project
  belongs_to :score
  belongs_to :user

  scope :filter_by_current_month, -> { 
    where(created_at: Time.now.beginning_of_month..Time.now.end_of_month)
    .order(work_day: 'DESC')
  }

  scope :filter_by_all, -> { order(work_day: 'DESC') }
end
