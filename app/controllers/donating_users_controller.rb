class DonatingUsersController < ApplicationController

  def new
   @donating_user = DonatingUser.new
  end

  def create
    @donating_user = DonatingUser.new(params[:donating_user])
    @donation = @donating_user.donations.create(params[:donation])
    if @donating_user.donations.save!     #if problem in 'save!' try using @donating_user.save!
      redirect_to :controller => 'main', :action => 'home'
    else
      render :new
    end
  end

end
