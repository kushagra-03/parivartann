class DonationsController < ApplicationController
  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(params[:donation])
    if @donation.save
      flash[:notice] = 'Your request has been saved. We will contact you soon'
      redirect_to(:action =>:home , :controller => :main )

    else
      render :action => 'new'
    end
  end

end
