# A simple tool to determine the current version of Mac OS X.
# TODO : Catch if it's *not* OS X - whether that's Windows, or Linux.

module WhichOSX
  def self.version
    output = `sw_vers`.scan(/\d\d\.\d\.\d/).flatten
    output.delete "[]\""
    return output
    
  rescue Errno::ENOENT
    puts "It looks like you aren't using Mac OS X. Sorry!"
    
  end
end
