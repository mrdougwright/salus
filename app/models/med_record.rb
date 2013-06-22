class MedRecord < ActiveRecord::Base
  attr_accessible :abdominal

  validates :abdominal, presence: true
  belongs_to :user
end
