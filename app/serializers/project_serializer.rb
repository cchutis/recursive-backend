class ProjectSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :language, :due_date, :card_photo, :tasks

  def card_photo
    rails_blob_path(object.card_photo, only_path: true) if object.card_photo.attached?
  end

end
