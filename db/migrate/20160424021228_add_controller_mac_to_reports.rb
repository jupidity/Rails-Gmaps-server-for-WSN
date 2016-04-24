class AddControllerMacToReports < ActiveRecord::Migration
  def change
    add_column :reports, :controller_mac, :string
  end
end
