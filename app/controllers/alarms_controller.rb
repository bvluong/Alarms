class AlarmsController < ApplicationController
  def index
    @alarms = Alarm.all
  end

  def new
    @alarm = Alarm.new
  end

  def create
    Alarm.create(alarm_params)
    redirect_to alarms_url
  end

  def alarm_params
    params.require(:alarm).permit(:title)
  end


end
