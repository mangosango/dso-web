class OrchestraSectionsController < InheritedResources::Base
	def index
		@sections = OrchestraSection.all.order_by(:position => :asc)
	end
end