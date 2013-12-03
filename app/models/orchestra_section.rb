class OrchestraSection
  include Mongoid::Document
  field :name
  field :position
  embeds_many :members
  accepts_nested_attributes_for :members, :allow_destroy => true
end