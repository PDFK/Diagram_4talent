class Stage < ApplicationRecord
  belongs_to :responsable
  has_many :stage_labors
  has_many :stage_applicants
end
