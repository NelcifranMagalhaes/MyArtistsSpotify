require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, SPOT_ID, SPOT_SECRET, scope: 'user-read-email user-follow-read'

end