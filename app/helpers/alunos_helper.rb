#encoding: UTF-8
module AlunosHelper

  def nenhum_aluno
	"<tr>
	  <td>Não há alunos cadastrados.</td>
	  <td></td>
	  <td></td>
	  <td></td>
	  <td></td>
	</tr>".html_safe
  end
end
