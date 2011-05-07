class AdvertisementsController < ApplicationController

  before_filter :authenticate_user!, :except => [:index, :show]

  # GET /advertisements
  def index
    @advertisements = Advertisement.all
  end

  # GET /advertisements/1
  def show
    @advertisement = Advertisement.find(params[:id])
  end

  # GET /advertisements/new
  def new
    @advertisement = Advertisement.new
  end

  # GET /advertisements/1/edit
  def edit
    @advertisement = Advertisement.find(params[:id])
  end

  # POST /advertisements
  def create
    @advertisement = Advertisement.new(params[:advertisement])
    @advertisement.user = current_user

    if @advertisement.save
       redirect_to(@advertisement, :notice => 'Advertisement was successfully created.') 
    else
       render :action => "new" 
    end
  end

  # PUT /advertisements/1
  def update
    @advertisement = Advertisement.find(params[:id])

    if @advertisement.update_attributes(params[:advertisement])
      redirect_to(@advertisement, :notice => 'Advertisement was successfully updated.') 
    else
      render :action => "edit" 
    end
  end

  # DELETE /advertisements/1
  def destroy
    @advertisement = Advertisement.find(params[:id])
    @advertisement.destroy
    redirect_to(advertisements_url) 
  end
end
