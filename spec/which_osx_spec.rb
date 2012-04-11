# which_osx_spec.rb
require 'which_osx'

  describe "version" do
    it "should issue a command that returns a string" do
      WhichOSX.version.class.should === "String"
    end

    it "should convert version to a nice string" do
      WhichOSX.version.should === "10.7.3"
    end

    # it "should tell you when you're not on Mac OS X" do
    #   # how best to mock a non-Mac OS X environment?
    # end

  end
