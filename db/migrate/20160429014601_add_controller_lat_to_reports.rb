class AddControllerLatToReports < ActiveRecord::Migration
  def change
      add_column :reports, :controller_lat, :float
  end
end
