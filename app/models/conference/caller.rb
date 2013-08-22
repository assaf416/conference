module Conference
  class Caller < ActiveRecord::Base
    attr_accessible :email, :image_url, :name, :token
  end
end
