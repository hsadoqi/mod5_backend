class User < ApplicationRecord
    has_secure_password 

    has_many :projects, foreign_key: 'manager_id', class_name: 'Project'

    has_many :applications, foreign_key: :collaborator_id, class_name: 'Application'
    has_many :roles, through: :applications, source: :role

    has_many :collaborators, -> {distinct}, through: :projects
    has_many :managers, -> {distinct}, through: :projects

    validates :username, uniqueness: {case_sensitive: false}
end
