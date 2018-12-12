class Application < ApplicationRecord
    belongs_to :role
    belongs_to :collaborator, foreign_key: 'collaborator_id', class_name: 'User'
end
