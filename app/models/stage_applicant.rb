class StageApplicant < ApplicationRecord
  belongs_to :stage
  belongs_to :applicant
end
