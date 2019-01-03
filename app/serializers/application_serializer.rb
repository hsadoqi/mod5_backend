class ApplicationSerializer < ActiveModel::Serializer
  attributes :id, :role, :collaborator, :approve, :reject

  def role 
    RoleSerializer.new(self.object.role)
  end

end
