class Test < ApplicationRecord
  belong_to :teacher
  has_many :scores
  has_many :students, through: :scores
end
