class Project < ApplicationRecord
  belongs_to :user
  has_many :tasks
  has_one_attached :card_photo
end
