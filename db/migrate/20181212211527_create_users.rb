class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string 'name'
      t.string 'username'
      t.string 'password_digest'
      t.string 'bio'
      t.boolean 'public'
      t.string 'img'
      t.string 'facebook'
      t.string 'twitter'
      t.string 'linkedin'
      t.string 'firstPreference'
      t.string 'secondPreference'
      t.string 'thirdPreference'
      t.timestamps
    end
  end
end
