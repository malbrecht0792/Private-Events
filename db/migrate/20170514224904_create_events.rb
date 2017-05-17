class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :description
      t.datetime :datetime

      t.timestamps
    end
    add_index :events, :datetime
  end
end
