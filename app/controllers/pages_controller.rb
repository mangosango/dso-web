class PagesController < ApplicationController
  def index
  	@concert = Concert.where(:date.gte => Date.today.to_s).order_by(:date => :asc).first
  	unless @concert
  		@concert = Concert.order_by(:date => :desc).first
  	end
  	@events = Event.order_by(:date => :desc).limit(3)
  end
end