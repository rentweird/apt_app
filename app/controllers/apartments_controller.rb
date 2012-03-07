class ApartmentsController < ApplicationController
 
  def show
    @apartment = Apartment.find(params[:id])
  end

  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.new(params[:apartment])
    if @apartment.save
      flash[:success] = "Apartment data uploaded sucessfully!"    	
      redirect_to @apartment
    else
      render 'new'
    end
  end
end


