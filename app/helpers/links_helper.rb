# Helpers for Links resource
module LinksHelper
  def translation(text)
    t("links.#{action_name}.#{text}")
  end

  def link_with_key(key)
    request.base_url + '/' + key
  end

  def ttl(link)
    ((link.expire_in - link.created_at) / 3600).round
  end
end
