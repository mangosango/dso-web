class Event
  include Mongoid::Document
  field :name
  field :description
  field :date, :type => Date
  validates_presence_of :name
  validates_presence_of :date
end