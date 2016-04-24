class ChangeSensorIdToMac < ActiveRecord::Migration
  def change
    remove_column :reports, :sensor_id
    add_column :reports, :sensor_mac, :string
  end
end
