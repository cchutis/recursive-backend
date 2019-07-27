class Project < ApplicationRecord
  belongs_to :user
  has_many :tasks
  has_one_attached :project_photo
end
