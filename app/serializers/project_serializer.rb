class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :roles, :manager, :content, :category, :img

  # def manager 
  #   self.object.manager
  # end 

  def roles 
    self.object.roles.map do |role|
      RoleSerializer.new(role)
    end 
  end 
end
