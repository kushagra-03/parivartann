class DonatingUser < ActiveRecord::Base
  has_many :donations,  :inverse_of => :donating_user
end
