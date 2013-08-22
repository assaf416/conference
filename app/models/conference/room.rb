module Conference
  class Room < ActiveRecord::Base
    attr_accessible :name, :token
  end
end
