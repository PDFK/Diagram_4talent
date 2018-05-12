class Interview < ApplicationRecord
  has_many :stage_labors, as: :laborable
  belongs_to :interview_type
end
