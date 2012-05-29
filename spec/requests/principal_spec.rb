#encoding: UTF-8
require 'spec_helper'

describe "Principal" do
  describe "página principal" do
    it "exibe nome do sistema" do
      visit principal_path
      page.should have_content("Sistema de Gestão Escolar")
    end
  end
end
