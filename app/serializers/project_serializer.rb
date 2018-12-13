class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :roles, :manager

  # def manager 
  #   self.object.manager
  # end 
end
