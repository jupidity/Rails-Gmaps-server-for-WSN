class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :sensor_id
      t.float :temp
      t.float :lat
      t.float :long
    end
  end
end
