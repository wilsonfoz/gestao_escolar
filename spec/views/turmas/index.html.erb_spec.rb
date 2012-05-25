require 'spec_helper'

describe "turmas/index" do
  before(:each) do
    assign(:turmas, [
      stub_model(Turma,
        :nome => "Nome"
      ),
      stub_model(Turma,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of turmas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
