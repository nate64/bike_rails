class PartsController < ApplicationController
  
  #read all pages
  def index
    @parts = Part.all 
  end

  #Finds a page by the id passed in
  def show
    @parts = Part.find(params[:id])
  end

  #Creates a new page in memory that is not yet saved to the db
  def new
    @parts = Part.new
  end

  def create 
    @parts = Part.new(parts_params)

    if @parts.save
      redirect_to parts_path(@parts.id)
    else
      render :new
    end
  end

  def edit
    @parts = Part.find(params[:id])
    #redirect parts_path(@part.id) # - doesn't like this
  end

  def update
    @parts = Part.find(params[:id])
  
    if @parts.update(parts_params)
      redirect_to parts_path
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def parts_params
    params.require(:part).permit(:name, :color, :description, :manufacturer)
  end


end
