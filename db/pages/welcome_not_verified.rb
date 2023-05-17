def generate_content(page)
  page.title = I18n.t("welcome.welcome.title")

  page.content = "<div class='govuk-panel govuk-panel--confirmation'>
                    <p>#{I18n.t("welcome.welcome.user_permission_info")}</p>
                  
                      <p>#{I18n.t("verification.user_permission_debates")}</p>
                      <p>#{I18n.t("verification.user_permission_proposal")}</p>
              

                    <p>#{I18n.t("welcome.welcome.user_permission_verify")}</p>
            
                      <p>#{I18n.t("verification.user_permission_support_proposal")}</p>
                      <p>#{I18n.t("verification.user_permission_votes")}</p>
             

                    <a href='/verification' class='button success radius expand'>
                      #{I18n.t("welcome.welcome.user_permission_verify_my_account")}
                    </a>

                    <p><a href='/' class='govuk-back-link'>#{I18n.t("welcome.welcome.go_to_index")}</a></p>
                  </div>"
  page.save!
end
if SiteCustomization::Page.find_by(slug: "welcome_not_verified").nil?
  page = SiteCustomization::Page.new(slug: "welcome_not_verified", status: "published")
  I18n.available_locales.each do |locale|
    I18n.with_locale(locale) { generate_content(page) }
  end
end
