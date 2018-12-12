class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :manager, :roles
end
