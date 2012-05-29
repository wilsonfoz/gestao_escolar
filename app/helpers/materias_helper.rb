#encoding: UTF-8
module MateriasHelper
  
  def nenhuma_materia
	"<tr>
	  <td>Não há matérias cadastradas.</td>
	  <td></td>
	  <td></td>
	  <td></td>
	</tr>".html_safe
  end		
end
