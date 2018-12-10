# User Helper
module UsersHelper
  # Returns the Gravatar for the given user.
  def gravatar_for(user, size = 100)
    Rails.cache.fetch(user, expires_in: 30.seconds) do
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
      gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
      image_tag(gravatar_url, alt: user.name, class: 'gravatar', size: size.to_s)
    end
  end
end
