class CreateAdminApps < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_apps do |t|
      t.timestamps
    end
  end
end
