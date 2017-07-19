class AlarmsController < ApplicationController
  def index
    @alarms = Alarm.all
  end

  def new
    @alarm = Alarm.new
  end

  def create
    redirect_to alarms_url
  end


end
