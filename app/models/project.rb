class Project < ApplicationRecord

    belongs_to :manager, foreign_key: 'manager_id', class_name: 'User'

    has_many :roles, class_name: 'Role'
    has_many :applications, through: :roles

    

end
