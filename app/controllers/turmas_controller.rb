class TurmasController < ApplicationController
  respond_to :html
  
  def index
    @turmas = Turma.includes(:alunos).all
    
    respond_with @turmas 
  end

  def show
    @turma = Turma.find(params[:id])

    respond_with @turma
  end

  def new
    @turma = Turma.new
    @turma.aulas.build
        
    respond_with @turma
  end

  def edit
    @turma = Turma.find(params[:id])
  end

  def create
    @turma = Turma.new(params[:turma])

    if @turma.save
      respond_with @turma
    else
      render action: "new"
    end
  end

  def update
    @turma = Turma.find(params[:id])

    if @turma.update_attributes(params[:turma])
      respond_with @turma
    else
      render action: "edit"
    end
  end

  def destroy
    @turma = Turma.find(params[:id])
    @turma.destroy

    redirect_to turmas_url
  end
end
