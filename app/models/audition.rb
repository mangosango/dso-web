class Audition
  include Mongoid::Document
  field :date, :type => Date
  field :times
  field :location
  field :description
  validates_presence_of :date
  validates_presence_of :times
  validates_presence_of :location
  validates_presence_of :description
end
