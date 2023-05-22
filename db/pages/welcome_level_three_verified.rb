def generate_content(page)
  page.title = I18n.t("welcome.welcome.title")

  page.content ="<div class='govuk-panel govuk-panel--confirmation'>
                  <h1 class='govuk-panel__title'>
                    #{I18n.t("account.show.verified_account")}
                  </h1>
                  <div class='govuk-panel__body'>
                    <strong>#{I18n.t("welcome.welcome.user_permission_info")}</strong>
                    <ul class='no-bullet'>
                      <li>#{I18n.t("verification.user_permission_debates")}</li>
                      <li>#{I18n.t("verification.user_permission_proposal")}</li>
                      <li>#{I18n.t("verification.user_permission_support_proposal")}</li>
                      <li>#{I18n.t("verification.user_permission_votes")}</li>
                    </ul>
                    <a href='/' class='govuk-button govuk-button--secondary'>#{I18n.t("welcome.welcome.start_using_consul")}</a>
                  </div>
                </div>"
  
  page.save!
end

if SiteCustomization::Page.find_by(slug: "welcome_level_three_verified").nil?
  page = SiteCustomization::Page.new(slug: "welcome_level_three_verified", status: "published")
  I18n.available_locales.each do |locale|
    I18n.with_locale(locale) { generate_content(page) }
  end
end

