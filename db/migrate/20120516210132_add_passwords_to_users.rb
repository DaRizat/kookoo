class AddPasswordsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|

      t.string :crypted_password
      t.string :password_salt
    
    end
  end
end
