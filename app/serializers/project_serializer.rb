class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :language, :due_date, :tasks
end
