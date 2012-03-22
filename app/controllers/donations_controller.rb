class DonationsController < ApplicationController
  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(params[:donation])
    if @donation.save
<<<<<<< HEAD
      redirect_to("/" , flash[:notice] => "Your request has been saved. We will contact you soon" )
=======
      flash[:notice] = 'Your request has been saved. We will contact you soon'
      redirect_to(:action =>:home , :controller => :main )
>>>>>>> 9e24a00f5d7b52781fb1ab440f68f3f43fb0d691
    else
      render :action => 'new'
    end
  end

end
