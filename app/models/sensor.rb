class Sensor < ActiveRecord::Base
  has_many :reports
end
