class CreateReceivers < ActiveRecord::Migration[7.0]
  def up
    create_table :receivers do |t|
      t.timestamps
    end

    add_reference :receivers, :workspace
    add_reference :receivers, :thank
    add_reference :receivers, :receiver_user, foreign_key: { to_table: :users }
  end

  def down
    remove_reference :receivers, :receiver_user, foreign_key: true
    remove_reference :receivers, :thank
    remove_reference :receivers, :workspace

    drop_table :receivers
  end
end
