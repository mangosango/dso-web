class SectionsController < InheritedResources::Base
	def index
		@sections = Section.all
	end
end