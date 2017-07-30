class System < ApplicationRecord
  belongs_to :priority
  belongs_to :team
  has_many :dependencies
  has_many :required_systems, through: :dependencies
  has_many :dependents, class_name: 'Dependency', foreign_key: 'required_system_id'
  has_many :dependent_systems, through: :dependents, source: :system
end
