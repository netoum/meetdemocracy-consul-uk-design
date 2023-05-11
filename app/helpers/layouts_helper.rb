module LayoutsHelper
  def layout_menu_link_to(text, path, is_active, options)
    title = t("shared.go_to_page") + text

    if is_active
      tag.li(class: "govuk-header__navigation-item govuk-header__navigation-item--active") do
        link_to(text, path, options.merge(class: "govuk-header__link", title: title))
      end
    else
      tag.li(class: "govuk-header__navigation-item") do
      link_to(text, path, options.merge(class: "govuk-header__link",title: title))
      end
    end
  end

  def common_html_attributes
    render Layout::CommonHTMLAttributesComponent.new
  end
end
