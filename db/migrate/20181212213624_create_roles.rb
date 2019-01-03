class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string 'title'
      t.string 'description'
      t.boolean 'filled'
      t.references :project
      t.timestamps
    end
  end
end
