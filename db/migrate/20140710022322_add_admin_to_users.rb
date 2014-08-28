class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users 
    add_column :admin
    add_column :boolean
    add_column :default => false
  end
end



