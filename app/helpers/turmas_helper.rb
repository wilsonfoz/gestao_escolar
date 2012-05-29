#encoding: UTF-8
module TurmasHelper
  def nenhuma_turma
	"<tr>
	  <td>Não há turmas cadastradas.</td>
	  <td></td>
	  <td></td>
	  <td></td>
	</tr>".html_safe
  end			
end
