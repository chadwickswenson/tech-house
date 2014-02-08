class SiteController < ApplicationController
  def index
    @applicant = Applicant.new
  end
    def create
    @applicant = Applicant.new(app_params)
    if @applicant.save
      flash[:notice] = "Thank you, #{@applicant.name}"
     redirect_to "/"
   else 
      render 'index'
  end
end
  private
  def app_params
    params.require('applicant').permit(:name, :email, :employer, :website, :about)
  end
end
