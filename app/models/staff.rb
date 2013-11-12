class Staff
  include Mongoid::Document
  field :team, type: String
  field :name, type: String
  field :position, type: String
  field :photo, type: String
  field :email, type: String
end
