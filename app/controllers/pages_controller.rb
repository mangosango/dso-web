class PagesController < ApplicationController
  def index
  	@firstEvent = Concert.all.sort_by(&:date).last
  	@events = Event.all.limit(3).sort_by(&:date).reverse
  end
end