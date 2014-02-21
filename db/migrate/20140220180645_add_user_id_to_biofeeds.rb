class AddUserIdToBiofeeds < ActiveRecord::Migration
  def change
    add_column :biofeeds, :user_id, :integer
    add_index :biofeeds, :user_id
  end
end
