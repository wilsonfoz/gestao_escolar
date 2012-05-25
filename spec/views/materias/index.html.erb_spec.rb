require 'spec_helper'

describe "materias/index" do
  before(:each) do
    assign(:materias, [
      stub_model(Materia,
        :nome => "Nome",
        :turma => nil
      ),
      stub_model(Materia,
        :nome => "Nome",
        :turma => nil
      )
    ])
  end

  it "renders a list of materias" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
