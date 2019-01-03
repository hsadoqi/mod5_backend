class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.references :collaborator
      t.references :role
      t.boolean 'approve'
      t.boolean 'reject'
      t.timestamps
    end
  end
end
