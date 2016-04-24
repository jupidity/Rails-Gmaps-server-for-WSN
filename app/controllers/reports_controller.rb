class ReportsController < ApplicationController
  def create
    @report = Report.new report_params
    @report.save
    render nothing: true
  end

  private

    def report_params
      params.require(:report).permit(:temp, :lat, :long,
      :sensor_mac, :controller_mac, :sleep, :voltage)
    end
end
