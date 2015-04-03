class AddPhoneTuUsers < ActiveRecord::Migration
  def change
    add_column :users, :phone, :bigint
  end
end
