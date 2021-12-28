class CreateThanks < ActiveRecord::Migration[7.0]
  def up
    create_table :thanks do |t|
      t.timestamps
    end

    add_reference :thanks, :workspace
    add_reference :thanks, :sender_user, foreign_key: { to_table: :users }
  end

  def down
    remove_reference :thanks, :sender_user, foreign_key: true
    remove_reference :thanks, :workspace

    drop_table :thanks
  end
end
