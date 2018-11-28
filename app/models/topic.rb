class Topic < ApplicationRecord
  belongs_to :sub
  # when you do has_one it is singluar when you do has_many it is plural
  has_many :comments
end
