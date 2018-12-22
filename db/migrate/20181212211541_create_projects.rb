class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string 'title'
      t.string 'img'
      t.string 'description'
      t.string 'content'
      t.string 'category'
      t.references :manager
      t.timestamps
    end
  end
end
