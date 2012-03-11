class DonationController < ApplicationController
  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(params[:donation])
    if @donation.save!
      render :action => 'new'
    else
      redirect_to :controller =>  :main ,:action =>  :home
    end
  end

end
