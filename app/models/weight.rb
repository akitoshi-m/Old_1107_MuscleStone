class Weight < ApplicationRecord
  validates :user_id, presence: true
  validates :measure_date, presence: true
  validates :weight, presence: true
    
  belongs_to :user
end
