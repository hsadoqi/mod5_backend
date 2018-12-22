class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :bio, :facebook, :twitter, :linkedin, :interests, :img, :public, :projects, :applications

  def projects
    self.object.projects.map do |project|
      ProjectSerializer.new(project)
    end 
  end

  def applications 
    self.object.applications.map do |app|
      ApplicationSerializer.new(app)
    end 
  end 
end
