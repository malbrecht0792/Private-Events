class RemoveAntendeeIdFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :antendee_id, :integer
  end
end
