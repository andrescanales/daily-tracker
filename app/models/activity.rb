class Activity < ApplicationRecord
  belongs_to :project
  belongs_to :score
  belongs_to :user
end
