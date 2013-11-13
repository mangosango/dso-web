class Contact
  include Mongoid::Document
  field :phone, type: String
  has_many :sections
end