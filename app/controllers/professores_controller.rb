class ProfessoresController < ApplicationController
  respond_to :html
  
  def index
    @professores = Professor.all

    respond_with @professores
  end

  def relatorio_professores
    @opcao_filtro = params[:filtro] || "Por turma"
    if @opcao_filtro == "Por turma"
      @turmas_professores = Turma.includes({:professores => [:materias]}, :aulas).joins(:professores, :aulas)
    elsif @opcao_filtro == "Por professor"  
      @professores_turmas = Professor.includes({:turmas => [:materias]}, :aulas).joins(:turmas, :aulas)
    end
  end
  
  def show
    @professor = Professor.find(params[:id])

    respond_with @professor
  end
  
  def new
    @professor = Professor.new

    respond_with @professor
  end

  def edit
    @professor = Professor.find(params[:id])
  end

  def create
    @professor = Professor.new(params[:professor])
    
    if @professor.save
      respond_with @professor
    else
      render action: "new"
    end
  end

  def update
    @professor = Professor.find(params[:id])

    if @professor.update_attributes(params[:professor])
      respond_with @professor
    else
      render action: "edit"
    end    
  end

  def destroy
    @professor = Professor.find(params[:id])
    @professor.destroy

    redirect_to professores_url
  end
end
