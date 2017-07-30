class Dependency < ApplicationRecord
  belongs_to :system
  belongs_to :required_system, class_name: "System"
end
