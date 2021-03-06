require 'spec_helper'

describe Base do

  context "Respawn folder path" do
    it "resolves the default path" do
      allow_any_instance_of(Titanfall).to receive(:username).and_return("Xta")

      t = Titanfall.new
      expect(t.path).to eql "C:\\Users\\Xta\\Documents\\Respawn"
    end

    it "accepts a file path argument to set the proper path" do
      t = Titanfall.new "C:\\Users\\Other\\Library\\Documents\\Respawn"
      expect(t.path).to eql "C:\\Users\\Other\\Library\\Documents\\Respawn"
    end
  end

end
