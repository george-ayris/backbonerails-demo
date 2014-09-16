class User < ActiveRecord::Base
  
  def full_name
    "#{firstname} #{last_name}"
  end
end
