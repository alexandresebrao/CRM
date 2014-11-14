class FinderController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
  	@customers = Customer.order(:fullname)
  	render :index
  end

  def missingemail
  	@customers = Customer.where(email: "")
  	render :index
  end
end
