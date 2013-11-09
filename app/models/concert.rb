class Concert
  include Mongoid::Document
  field :name
  field :date, :type => Date
  field :time
  field :description
  field :image
  field :ticket
  field :videoSource

  validates_presence_of :name
  validates_presence_of :date
  validates_presence_of :time
  validates_presence_of :description
  validates_presence_of :ticket
end
