class Donation < ActiveRecord::Base
  belongs_to :donating_user, :inverse_of => :donations

  def books=(books)
    books.reject(&:blank?)
  end
end
