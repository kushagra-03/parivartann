class Donation < ActiveRecord::Base



  validates :name ,:presence => true , :length => {:minimum => 2},  :reduce => true

  validates :city , :presence => true, :length => {:minimum => 3} , :reduce => true

  validates :email, :presence => true , :length => {:minimum => 3} , :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i} , :uniqueness => true,  :reduce => true

  validates :contact_no,:presence => true,  :numericality => {:only_integer => true} , :length => {:minimum => 6}  , :uniqueness => true , :reduce => true

  validate :at_least_one_item_should_be_selected_to_donate


  def at_least_one_item_should_be_selected_to_donate
    if books == "0" and clothes == "0" and celebrate == "0" and others.blank?
      errors.add(:base,"At least one of the options should be selected from the available donations.")
    end
  end




end
