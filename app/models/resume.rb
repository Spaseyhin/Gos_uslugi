class Resume < ActiveRecord::Base
  
   validates :phone, presence: true # Make sure the owner's name is present.
end