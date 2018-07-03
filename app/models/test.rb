class Test < ApplicationRecord
  belongs_to :teacher
  has_many :scores
  has_many :students, through: :scores
end
