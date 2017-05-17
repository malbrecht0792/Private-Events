class AddForeignKeysToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :host_id, :integer
    add_column :events, :antendee_id, :integer
  end
  add_index :events, :host_id
  add_index :events, :antendee_id
end
