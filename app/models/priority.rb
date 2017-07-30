class Priority < ApplicationRecord
  has_many :systems
  validates :level, presence: true, numericality: { greater_than: 0 }
end
