class ApplicationSerializer < ActiveModel::Serializer
  attributes :id, :role, :collaborator
end
