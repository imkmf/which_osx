# A simple tool to determine the current version of Mac OS X.
# TODO : Catch if it's *not* OS X - whether that's Windows, or Linux.

module WhichOSX
  def self.version
    output = `sw_vers`.scan(/\d\d\.\d\.\d/)
    return output
  end
end
