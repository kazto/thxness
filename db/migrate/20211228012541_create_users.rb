class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :slack_user_id
      t.string :slack_user_name
      t.bigint :total_send_points
      t.bigint :total_receive_points

      t.timestamps
    end

    add_reference :users, :workspace
  end
end
