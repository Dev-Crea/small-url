# Core to model Links
class Link
  include Mongoid::Document
  include Mongoid::Timestamps

  field :url,         type: String
  field :key,         type: String
  field :expire_in,   type: Time
  field :click,       type: Integer
end
