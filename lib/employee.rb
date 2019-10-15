class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_interger: true, greater_than: 40, less_than: 200, message: "%{value} seems wrong"}
  validates_associated :store
end
