class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Database authenticatable
      t.string :email,              :null => false, :default => "", limit: 96
      t.string :encrypted_password, :null => false, :default => "", limit: 60

      ## Admin
      t.boolean :admin, :null => false, :default => false

      ## Lock
      t.boolean :locked, :null => false, :default => false

      ## Recoverable
      t.string   :reset_password_token, limit: 64
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0, :null => false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip, limit: 15
      t.string   :last_sign_in_ip,    limit: 15

      ## Confirmable
      t.string   :confirmation_token, limit: 64
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email, limit: 96


      t.timestamps

      t.index :email, unique: true
      t.index :reset_password_token, :unique => true
      t.index :confirmation_token,   :unique => true
    end
  end
end
