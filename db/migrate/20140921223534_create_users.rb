class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false, limit: 255
      t.string :password_digest, null: false, limit: 255
      t.string :session_token, null: false
      t.text :status, limit: 1024
      t.timestamps
    end

    add_index :users, :username, unique: true
    add_index :users, :session_token, unique: true
  end
end

