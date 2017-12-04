class RpgController < ApplicationController
  def index
    session[:gold] ||= 0
    session[:activities] ||= []
    @gold = session[:gold]
    @activities = session[:activities]
  end

  def bitmine
    if params[:building] == 'farm'
      gold = rand(100..200)
    elsif params[:building] == 'cave'
      gold = rand(20..50)
    elsif params[:building] == 'casino'
      gold = rand(-100..200)
    elsif params[:building] == 'house'
      gold = rand(50..100)
    end

    current_time = Time.now

    if gold > 0
      session[:activities] << "Got #{gold} gold from #{params[:building]}!(#{current_time.strftime('%Y/%m/%d %l:%M %P')})"
    else
      session[:activities] << "Entered a casino and lost #{gold} gold... HAHA. (#{current_time.strftime('%Y/%m/%d %l:%M %P')})"
    end
    session[:gold] += gold
    redirect_to '/'
  end
  
  
end
