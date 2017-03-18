# Core to model Links
class Link
  include Mongoid::Document
  include Mongoid::Timestamps

  field :url,         type: String
  field :key,         type: String
  field :expire_in,   type: Time,     default: Time.zone.now + 24.hours
  field :click,       type: Integer,  default: 0
end
