def generate_content(page)
  page.title = I18n.t("welcome.welcome.title")

  page.content = "<div class='govuk-panel__body'>
                    <p>#{I18n.t("welcome.welcome.user_permission_info")}</p>
                    
                    <p>#{I18n.t("verification.user_permission_debates")}</p>
                    <p>#{I18n.t("verification.user_permission_proposal")}</p>
                    <p>#{I18n.t("verification.user_permission_support_proposal")}</p>
                    <p>#{I18n.t("verification.user_permission_votes")}</p>
                    

                    <p>#{I18n.t("account.show.verified_account")}</p>

                    <p><a href='/' class='govuk-back-link'>#{I18n.t("welcome.welcome.start_using_consul")}</a></p>
                  </div>"
  page.save!
end

if SiteCustomization::Page.find_by(slug: "welcome_level_three_verified").nil?
  page = SiteCustomization::Page.new(slug: "welcome_level_three_verified", status: "published")
  I18n.available_locales.each do |locale|
    I18n.with_locale(locale) { generate_content(page) }
  end
end
