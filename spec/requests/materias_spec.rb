require 'spec_helper'

describe "Materias" do
  describe "GET /materias" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get materias_path
      response.status.should be(200)
    end
  end
end
