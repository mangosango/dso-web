class AuditionsController < InheritedResources::Base
  def index
    @audition = Audition.first
  end
end