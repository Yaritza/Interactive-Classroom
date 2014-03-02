class Course < ActiveRecord::Base
  validates :number, uniqueness: true, length: {maximum: 12}
  validates :name, uniqueness: true, presence: true
end
