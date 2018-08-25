class AddDrivingDirectionsColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :driving_directions, :string
  end
end
