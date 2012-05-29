#encoding: UTF-8
module ProfessoresHelper

  def nenhum_professor
	"<tr>
	  <td>Não há professores cadastrados.</td>
	  <td></td>
	  <td></td>
	  <td></td>
	</tr>".html_safe
  end	
end
