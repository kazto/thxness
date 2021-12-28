class CreateAdminWorkspaces < ActiveRecord::Migration[7.0]
  def up
    create_table :admin_workspaces do |t|
      t.belongs_to :workspace
      t.string :account

      t.timestamps
    end
  end

  def down
    drop_table :admin_workspaces
  end
end
