class RoleSerializer < ActiveModel::Serializer
  attributes :id, :project, :applicants, :title, :description, :filled, :applications

  def applicants
    self.object.applications.map do |app|
      app.collaborator
    end 
  end 

  
end
