class CreateTicketNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_notes do |t|
      t.integer :ticket_id
      t.text :note

      t.timestamps
    end
  end
end
