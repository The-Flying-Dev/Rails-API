class BusinessesController < ApplicationController
  def index 
    businesses = Business.all 
    render json: businesses
  end

  def show 
    business = Business.find(params[:id])
    render json: business
  end

  def create 
    business = Business.new(business_params)
    if business.save
      render json: business
    else 
      render json: { error: "Can't create Business at this time" }, status: 400
    end 
  end

  def update 
    business = Business.find(params[:id])
    if business 
      business.update(business_params)
      render json: business, status: 200
    else   
      render json: { error: "Can't update Business at this time" }, status: 400
    end
  end

  def destroy 
    business = Business.find(params[:id])
    if business 
      business.destroy
      render json: business, status: 200
    else   
      render json: { error: "Can't delete Business at this time" }, status: 400
    end
  end

  private  

  def business_params
    params.permit(:id, :title, :location, :number_of_employees, :service, :owner_id)
  end
end
