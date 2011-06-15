class CreateModels < ActiveRecord::Migration
  def self.up
    # down

    create_table :user_accounts do |t|
      t.string :name
      t.timestamps
    end

    create_table :roles do |t|
      t.string :name
      t.timestamps
    end 

    create_table :users_roles do |t|
      t.integer :user_account_id
      t.integer :role_id
    end
  end
  
  def self.down  
    drop_table :user_accounts
    drop_table :roles
    drop_table :users_roles
  end
end

