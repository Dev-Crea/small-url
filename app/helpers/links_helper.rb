# Helpers for Links resource
module LinksHelper
  def transalation(text)
    t("links.#{action_name}.#{text}")
  end
end
