class PagesController < ApplicationController
  def index
  	@firstEvent = Event.first
  	@events = Event.all.limit(3).offset(1)
  end
end