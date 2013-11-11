class EventsController < ApplicationController
  def index
    @events = Event.order_by(:date => :desc).page(params[:page]).per(6)

    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @events }
    end
  end
end
