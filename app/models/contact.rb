class Contact
  include Mongoid::Document
  # field :phone, type: String
  field :category
  field :manager_1
  field :manager_2
end