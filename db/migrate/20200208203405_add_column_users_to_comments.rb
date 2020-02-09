class AddColumnUsersToComments < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :users, index: true  
  end
end
