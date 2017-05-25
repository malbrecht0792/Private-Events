class RemoveAtendeeIdFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :atendee_id, :integer
  end
end
