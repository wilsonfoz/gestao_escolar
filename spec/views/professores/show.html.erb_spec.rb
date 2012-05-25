require 'spec_helper'

describe "professores/show" do
  before(:each) do
    @professor = assign(:professor, stub_model(Professor,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
