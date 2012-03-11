class DonationsController < ApplicationController
  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(params[:donation])
    if @donation.save
      redirect_to({:controller =>  :main ,:action =>  :home} , :notice => 'Your request has been saved. We will contact you soon' )
    else
      render :action => 'new'
    end
  end

end
