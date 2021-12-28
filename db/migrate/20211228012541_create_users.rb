class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :slack_user_id, comment: "SlackユーザID（プロフィール、メンバーIDをコピー、から取得できる）"
      t.string :slack_user_name, comment: "Slackユーザ名（プロフィール、氏名。メンション時に表示されるもの）"
      t.bigint :total_send_points, comment: "総感謝した数"
      t.bigint :total_receive_points, comment: "総感謝された数"

      t.timestamps
    end

    add_reference :users, :workspace
  end
end
