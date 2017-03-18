# frozen_string_literal: true

# Core to model Links
class Link
  include Mongoid::Document
  include Mongoid::Timestamps

  field :url,         type: String
  field :key,         type: String
  field :expire_in,   type: Time,     default: Time.zone.now + 24.hours
  field :click,       type: Integer,  default: 0

  def self.search_url(token)
    link = Link.find_by(key: token)
    link.set(click: link.click + 1)
    link.url
  end
end
