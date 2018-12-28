module AccessTokenHelper
  REDIRECT_URL = "https://snacksmarket.io".freeze
  def get_token(owner_id)
    app = Doorkeeper::Application.create!(name: "TugoV2", redirect_uri: REDIRECT_URL)
    Doorkeeper::AccessToken.create!(application_id: app.uid, resource_owner_id: owner_id)
  end
end