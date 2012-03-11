class Donation < ActiveRecord::Base
  validates_presence_of :name ,:email ,:contact_no, :city, :others
  validates :name , :length => {:minimum => 2}
  validates :city , :length => {:minimum => 3}
  validates :email , :length => {:minimum => 3}
  validates :contact_no, :length => {:minimum => 6}
  validates :contact_no,:numericality => {:only_integer => true}
  validates_uniqueness_of :email , :contact_no
  validate :at_least_one_item_should_be_selected_to_donate

  def at_least_one_item_should_be_selected_to_donate
    if books= "0" and clothes = "0" and celebrate = "0" and others.blank?
      errors.add_to_base("At least one of the options should be selected from the available donations.")
    end
  end




end
