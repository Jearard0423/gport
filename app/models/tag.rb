class Tag < ApplicationRecord
  belongs_to :project
  validates :name, prescence: true, length: { maximumL 30 }
end
