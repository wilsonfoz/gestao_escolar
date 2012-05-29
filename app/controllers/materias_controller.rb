class MateriasController < ApplicationController
  respond_to :html
  
  def index
    @materias = Materia.all

    respond_with @materias
  end
  
  def show
    @materia = Materia.find(params[:id])

    respond_with @materia
  end

  def new
    @materia = Materia.new

    respond_with @materia
  end

  def edit
    @materia = Materia.find(params[:id])
  end
  
  def create
    @materia = Materia.new(params[:materia])

    if @materia.save
      respond_with @materia
    else
      render action: "new"
    end    
  end

  def update
    @materia = Materia.find(params[:id])

    if @materia.update_attributes(params[:materia])
      respond_with @materia
    else
      render action: "edit"
    end    
  end

  def destroy
    @materia = Materia.find(params[:id])
    @materia.destroy

    redirect_to materias_url
  end
end
