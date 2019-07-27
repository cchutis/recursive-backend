class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password, :dark_mode, :projects

  def projects
    project_tasks = []

    object.projects.each do |project|
      custom_project = project.attributes
      custom_project[:tasks] = project.tasks
      project_tasks.push(custom_project)
    end
    return project_tasks
  end
  
end
