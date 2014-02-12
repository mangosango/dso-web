class ProspiesController < InheritedResources::Base
	def index
		@prospy = Prospy.first
	end
end
