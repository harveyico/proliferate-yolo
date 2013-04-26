class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :email,              :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :avatar_path
      t.string :role
      t.string :provider
      t.string :uid

      t.timestamps
    end

    add_index :users, :email,                :unique => true
  end
end
