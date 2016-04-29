class AddControllerLongToReports < ActiveRecord::Migration
  def change
    add_column :reports, :controller_long, :float
  end
end
