class ApplicationSerializer < ActiveModel::Serializer
  attributes :id, :role, :collaborator, :approve

  def role 
    RoleSerializer.new(self.object.role)
  end

end
