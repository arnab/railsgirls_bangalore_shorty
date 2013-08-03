class ShortUrl < ActiveRecord::Base
  before_create :generate_short_code

  def generate_short_code
    self.short_code = SecureRandom.uuid.chars.last(5).join
  end
end
