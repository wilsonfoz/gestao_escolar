require 'spec_helper'

describe "materias/edit" do
  before(:each) do
    @materia = assign(:materia, stub_model(Materia,
      :nome => "MyString",
      :turma => nil
    ))
  end

  it "renders the edit materia form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => materias_path(@materia), :method => "post" do
      assert_select "input#materia_nome", :name => "materia[nome]"
      assert_select "input#materia_turma", :name => "materia[turma]"
    end
  end
end
