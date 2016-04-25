class ReportsController < ApplicationController
  protect_from_forgery :except => :create

  def index
    @reports = Report.pluck(:sensor_mac).uniq.map {|mac| Report.where(sensor_mac: mac).last }
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
      :sensor_mac, :controller_mac, :sleep, :voltage)
    end
end
