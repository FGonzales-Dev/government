require "spec_helper"

describe Government do

  context "constants" do
    it { should have_constant(:GOVERNMENT) }
  end

  context "::GOVERNMENT" do
    it "should be 12" do
      Government::GOVERNMENT.count.should == 12
    end
  end

  context "::REGION_DATA" do
    let(:countries) { Government::YML_GOVERNMENT.map { |_, v| v}.flatten.sort }

    it "provinces should be consistent with PROVINCES" do
      countries.should == Government::GOVERNMENT
    end
  end
end
