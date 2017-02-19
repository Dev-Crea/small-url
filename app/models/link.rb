# Core to model Links
class Link
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name,        type: String
  field :expire_in,   type: Time
end
