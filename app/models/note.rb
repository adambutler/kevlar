class Note < ActiveRecord::Base
  attr_encrypted :message, :key => ENV["ENCRYPTION_SECRET"], :attribute => 'message_encrypted'
end
