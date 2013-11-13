class Section
  include Mongoid::Document
  field :title, type: String
  field :manager, type: String
  belongs_to :contact
end