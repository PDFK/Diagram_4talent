class Activity < ApplicationRecord
	has_many :stage_labors, as: :laborable
end
