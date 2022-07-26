class OwnersController < ApplicationController

  def index 
    owners = Owner.all 
    render json: owners
  end

  def show 
    owner = Owner.find(params[:id])
    render json: owner
  end

  def create 
    owner = Owner.new(owner_params)
    if author.save
      render json: owner
    else 
      render json: { error: "Can't create Owner at this time" }, status: 400
    end 
  end

  def update 
    owner = Owner.find(params[:id])
    if owner 
      owner.update(owner_params)
      render json: owner, status: 200
    else   
      render json: { error: "Can't update Owner at this time" }, status: 400
    end
  end

  def destroy 
    owner = Owner.find(params[:id])
    if owner 
      owner.destroy
      render json: owner, status: 200
    else   
      render json: { error: "Can't delete Owner at this time" }, status: 400
    end
  end

  private  

  def owner_params
    params.permit(:name, :bio, :education)
  end
end
