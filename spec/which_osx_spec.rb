# which_osx_spec.rb
# todo: mock this so we don't encounter errors when we update our OS

require 'which_osx'

describe WhichOSX do

  before do
    stub_const("WhichOSX::VERSION", "10.7.2")
  end

  describe "version" do
    it "should issue a command that returns a string" do
      WhichOSX.version.class.should === "String"
    end

    it "should convert version to a nice string" do
      WhichOSX.version.should =~ /1[0-9].[0-9].[0-9]/
    end
  end

  describe "full name" do
    it "should return the full name of the OS" do
      WhichOSX.full_name.should =~ /Mac OS X 1[0-9].[0-9].[0-9]/
    end
  end

  describe "short name" do
    it "should chomp the version into a major release number" do
      WhichOSX.version.chop.chop.should =~ /1[0-9].[0-9]/
    end

    it "should return a major release name (Lion, Leopard, etc.)" do
      WhichOSX.short_name.should =~ /Lion|Leopard|Snow Leopard|Tiger|Panther/
    end
  end

  describe "is... checks" do
    it "should return true if the OS is Lion" do
      WhichOSX.is_lion.should be_true
    end
  end

end