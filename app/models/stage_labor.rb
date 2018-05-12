class StageLabor < ApplicationRecord
  belongs_to :stage
  belongs_to :laborable, polymorphic: true
end
