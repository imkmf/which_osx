require "test/unit"
require "which_osx"

class TestWhichOsx < Test::Unit::TestCase

  def test_version_parses_correctly
  	@version = ["10.7.3"]
  	@raw_command = "ProductName:\tMac OS X\nProductVersion:\t10.7.3\nBuildVersion:\t11D50\n" 
  	assert_equal @version, @raw_command.scan(/\d\d\.\d\.\d/), 'Version parses correctly.'
  end
  
end
