class AlarmsController < ApplicationController
  def index
    @alarms = Alarm.all.order(value: :desc)
  end

  def new
    @alarm = Alarm.new
  end

  def create
    alarm = Alarm.create(alarm_params)
    alarm.save
    redirect_to alarms_url
  end

  def alarm_params
    params.require(:alarm).permit(:title)
  end

  def upvote
    alarm = Alarm.find(params[:alarm_id])
    alarm.upvote
    redirect_to alarms_url
  end

  def downvote
    alarm = Alarm.find(params[:alarm_id])
    alarm.downvote
    redirect_to alarms_url
  end


end
