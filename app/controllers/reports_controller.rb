class ReportsController < ApplicationController
  protect_from_forgery :except => :create

  def index
    @reports = Report.pluck(:sensor_mac).uniq.sort.map {|mac| Report.where(sensor_mac: mac).last }

    @hash = Gmaps4rails.build_markers(@reports) do |report, marker|
      marker.lat report.lat
      marker.lng report.long
      desc = "Sensor Mac: #{report.sensor_mac}, Temperature: #{report.temp} C"
      marker.infowindow desc

     end


  




    @controllers = Report.pluck(:controller_mac).uniq.sort.map {|mac| Report.where(controller_mac: mac).last }


      @hashed = Gmaps4rails.build_markers(@controllers) do |controller, marker|
        marker.lat controller.controller_lat
        marker.lng controller.controller_long
        desc = "Controller Mac: #{controller.controller_mac} "
        marker.infowindow desc

    end

    @hash += @hashed

  end



  def create
    logger.debug report_params
    @report = Report.new report_params
    @report.save
    render nothing: true
  end

  def test
    logger.debug "Success!"
    render nothing: true
  end

  private

    def report_params
      params.require(:report).permit(:temp, :lat, :long,
      :sensor_mac, :controller_mac, :sleep, :voltage, :controller_lat, :controller_long)
    end
end
