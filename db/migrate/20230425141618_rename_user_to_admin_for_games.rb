class RenameUserToAdminForGames < ActiveRecord::Migration[7.0]
  def change
    rename_column :games, :user_id, :admin
  end
end
