class CreateInvitations < ActiveRecord::Migration[5.0]
  def change
    create_table :invitations do |t|
      t.integer :host_id
      t.integer :attendee_id
      t.integer :event_id

      t.timestamps
    end
    add_index :invitations, :host_id
    add_index :invitations, :attendee_id
    add_index :invitations, :event_id
  end
end
