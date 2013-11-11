class PagesController < ApplicationController
  def index
  	@firstEvent = Concert.order_by(:date => :desc).first
  	@events = Event.order_by(:date => :desc).limit(3)
  end
end