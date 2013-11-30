class Member
  include Mongoid::Document
  field :name
  embedded_in :OrchestraSection
end