# Core to model Links
class Link
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Ids

  field :url,         type: String
  field :key,         type: String
  field :expire_in,   type: Time
  field :click,       type: Integer

  token :key

  # rubocop:disable Rails/DynamicFindBy
  def self.find_url_by_key(token)
    Link.find_by_key(token).url
  rescue
    false
  end
  # rubocop:enable Rails/DynamicFindBy
end
