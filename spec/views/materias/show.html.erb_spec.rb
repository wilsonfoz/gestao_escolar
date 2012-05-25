require 'spec_helper'

describe "materias/show" do
  before(:each) do
    @materia = assign(:materia, stub_model(Materia,
      :nome => "Nome",
      :turma => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(//)
  end
end
