class PagesController < ApplicationController
  def index
  	@firstEvent = Concert.all.sort_by(&:date).last
  	@events = Event.all.sort_by(&:date).reverse.first(3)
  end
end