class AddUserIdToVlogs < ActiveRecord::Migration
  def change
    add_column :vlogs, :user_id, :integer
  end
end
