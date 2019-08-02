class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :language, :due_date, :photo, :tasks


end
