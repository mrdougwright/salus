class MedRecord < ActiveRecord::Base
  attr_accessible :abdominal

  validates :abdominal, presence: true
  
  belongs_to :user
  validates :user_id, presence: true
end
