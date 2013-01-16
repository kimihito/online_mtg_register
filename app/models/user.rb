class User < ActiveRecord::Base
  attr_accessible :email, :name, :provider, :uid, :skype_id
  
  has_many :events

  validates :email, :presence => true, :email => true
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.skype_id = ""

      if user.provider == "facebook"
        user.name = auth["info"]["name"]
        user.email = auth["info"]["email"]
      else
        # do something
      end
    end
  end

end
