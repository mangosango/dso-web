class Event
  include Mongoid::Document
  field :name
  field :tag
  field :description
  field :date, :type => Date, default: -> { Date.today.to_s }
  validates_presence_of :name
  validates_presence_of :date
end