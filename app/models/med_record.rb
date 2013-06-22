class MedRecord < ActiveRecord::Base
  attr_accessible :abdominal, :skin, :face, :heart, :sexual_organs, :joints, :lungs, :eyes, :nervous_system
  
  belongs_to :user
  validates :user_id, presence: true
end
