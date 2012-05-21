# which_osx_spec.rb
# todo: mock this so we don't encounter errors when we update our OS

require 'which_osx'

  describe "version" do
    it "should issue a command that returns a string" do
      WhichOSX.version.class.should === "String"
    end

    it "should convert version to a nice string" do
      WhichOSX.version.should =~ /[0-9][0-9].[0-9].[0-9]/
    end

    # it "should tell you when you're not on Mac OS X" do
    #   # how best to mock a non-Mac OS X environment?
    # end
  end

  describe "full name" do
    it "should return the full name of the OS" do
      WhichOSX.full_name.should =~ /Mac OS X [0-9][0-9].[0-9].[0-9]/
    end
  end

  describe "short name" do
    it "should chomp the version into a major release number" do
      WhichOSX.version.chop.chop.should =~ /[0-9][0-9].[0-9]/
    end

    it "should return a major release name (Lion, Leopard, etc.)" do
      WhichOSX.short_name.should =~ /Lion|Leopard|Snow Leopard|Tiger|Panther/
    end
  end

