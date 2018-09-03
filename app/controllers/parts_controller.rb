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

    if @parts.saved
      redirect parts_path(@part.id)
    else
      render :new
    end
  end

  def edit
    # @parts = Part.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def parts_params
    params.require(:part).permit(:name, :color, :description, :manufacturer)
  end


end
