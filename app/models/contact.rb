class Contact
  include Mongoid::Document
  field :phone, type: String
  has_many :sections
  accepts_nested_attributes_for :sections
end