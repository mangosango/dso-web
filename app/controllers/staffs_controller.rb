class StaffsController < InheritedResources::Base
  def index
    @creatives = Staff.where(team: 'creative').all
    @management = Staff.all.where(team: 'management').all
  end
end