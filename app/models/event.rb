class Event
  include Mongoid::Document
  field :name
  field :description
  field :date, :type => Date
  field :image
  field :ticketURL
  validates_presence_of :name
  validates_presence_of :date
  validates_presence_of :image
end
