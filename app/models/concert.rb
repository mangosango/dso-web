class Concert
  include Mongoid::Document
  field :name
  field :date, :type => Date
  field :time
  field :description
  field :image, default: -> { "http://" }
  field :ticket, default: -> { "http://" }
  field :buttonText, default: -> { "Get Tickets" }
  field :blackText

  validates_presence_of :name
  validates_presence_of :date
  validates_presence_of :time
  validates_presence_of :description
  validates_presence_of :ticket
end
