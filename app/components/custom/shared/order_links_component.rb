class Shared::OrderLinksComponent < ApplicationComponent; end

require_dependency Rails.root.join("app", "components", "shared", "order_links_component").to_s

class Shared::OrderLinksComponent
 def html_class(order)
      "govuk-link govuk-link--active" if order == current_order
    end

    def tag_name(order)
      if order == current_order
        :h2
      else
        :span
      end
    end
  end