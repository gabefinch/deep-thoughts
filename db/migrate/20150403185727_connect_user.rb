class ConnectUser < ActiveRecord::Migration
  def change
    add_column :comments, :user_id, :integer
    add_column :entries, :user_id, :integer
  end
end
