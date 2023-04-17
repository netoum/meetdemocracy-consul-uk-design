section "Creating Settings" do
  Setting.reset_defaults

  {
    "facebook_handle": "meetdemocracy",
    "feature.featured_proposals": "true",
    "feature.map": "true",
    "instagram_handle": "Meet Democracy ",
    "mailer_from_address": "contact@example.com",
    "mailer_from_name": "Meet Democracy",
    "meta_description": "Meet Democracy: Citizen participation tool for an open, "\
                        "transparent and democratic government",
    "meta_keywords": "citizen participation, open government",
    "meta_title": "Meet Democracy",
    "org_name": "Meet Democracy",
    "proposal_code_prefix": "MDD",
    "proposal_notification_minimum_interval_in_days": 0,
    "telegram_handle": "meetdemocracy",
    "twitter_handle": "@meetdemocracy",
    "twitter_hashtag": "#meetdemocracy",
    "url": "http://localhost:3000",
    "votes_for_proposal_success": "100",
    "youtube_handle": "meetdemocracy"
    }.each do |name, value|
    Setting[name] = value
  end
end
