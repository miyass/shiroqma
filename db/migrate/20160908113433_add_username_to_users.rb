class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :univ_name, :string
    add_column :users, :univ_year, :int
    add_column :users, :image, :string
  end
end
