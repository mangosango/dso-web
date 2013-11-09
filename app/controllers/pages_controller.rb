class PagesController < ApplicationController
  def index
  	@firstEvent = Concert.last
  	@events = Event.all
  end
end