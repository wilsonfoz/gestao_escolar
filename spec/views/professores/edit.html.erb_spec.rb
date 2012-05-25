require 'spec_helper'

describe "professores/edit" do
  before(:each) do
    @professor = assign(:professor, stub_model(Professor,
      :nome => "MyString"
    ))
  end

  it "renders the edit professor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => professores_path(@professor), :method => "post" do
      assert_select "input#professor_nome", :name => "professor[nome]"
    end
  end
end
