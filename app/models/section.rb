class Section
  include Mongoid::Document
  field :name
  embeds_many :members
end