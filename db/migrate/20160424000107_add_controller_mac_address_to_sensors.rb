class AddControllerMacAddressToSensors < ActiveRecord::Migration
  def change
    add_column :sensors, :controller_mac, :string
  end
end
