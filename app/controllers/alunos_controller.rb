class AlunosController < ApplicationController
  respond_to :html
  
  def index
    @alunos = Aluno.find(:all, :order => [:turma_id, :nome])

    respond_with @alunos
  end

  def relatorio_alunos
    @turmas_alunos = Turma.includes(:alunos).joins(:alunos)

    respond_with @turmas_alunos
  end

  def show
    @aluno = Aluno.find(params[:id])

    respond_with @aluno
  end

  def new
    @aluno = Aluno.new

    respond_with @aluno
  end
  
  def edit
    @aluno = Aluno.find(params[:id])
  end
  
  def create
    @aluno = Aluno.new(params[:aluno])

    if @aluno.save
      respond_with @aluno
    else
      render action: "new"
    end    
  end
  
  def update
    @aluno = Aluno.find(params[:id])

    if @aluno.update_attributes(params[:aluno])
      respond_with @aluno
    else
      render action: "edit"
    end    
  end
  
  def destroy
    @aluno = Aluno.find(params[:id])
    @aluno.destroy

    redirect_to alunos_url
  end
end
