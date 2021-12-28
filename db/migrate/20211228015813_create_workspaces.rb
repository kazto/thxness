class CreateWorkspaces < ActiveRecord::Migration[7.0]
  def change
    create_table :workspaces do |t|
      t.string :name, comment: "Slackワークスペース名"

      t.timestamps
    end
  end
end
