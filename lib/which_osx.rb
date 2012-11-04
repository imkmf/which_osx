# A simple tool to determine the current version of Mac OS X.

# Regex for "##.#.#"
output = `sw_vers`.scan(/\d\d\.\d\.\d/).flatten.to_s

# Take out some weird bits
output.delete! "[]\""
VERSION = output

class WhichOSX

  # Get the version of OS X currently running. 
  # This method returns something in the format of 
  # "XX.X.X" - it is used to help the rest of the commands
  # execute properly.

  def self.version
    short_version = VERSION
    return short_version
    
  rescue Errno::ENOENT
    puts "It looks like you aren't using Mac OS X. Sorry!"
    
  end

  # Get the full name including version.
  # Will always return "Mac OS X XX.X.X"

  def self.full_name
    full_name = "Mac OS X " + VERSION
    return full_name
  end

  # Returns the common name for the operating system,
  # such as "Mountain Lion" or "Tiger".

  def self.short_name
    # We just want the major versions -- 10.6, 10.7, etc.
    major_version = VERSION.chop.chop

    case
    when major_version == "10.4"
      short_name = "Tiger"
    when major_version == "10.5"
      short_name = "Leopard"
    when major_version == "10.6"
      short_name = "Snow Leopard"
    when major_version == "10.7"
      short_name = "Lion"
    when major_version == "10.8"
      short_name = "Mountain Lion"
    end

    return short_name
  end

  # A helper method for boolean checks. Compares the short name
  # to the given version name and returns true or false accordingly.

  def self.is(version)
    if short_name == version
      return true
    else
      return false
    end
  end

  # Checks if the operating system is currently running Mountain Lion.

  def self.is_mountain_lion
    self.is("Mountain Lion")
  end

  # Checks if the operating system is currently running Lion.

  def self.is_lion
    self.is("Lion")
  end

  # Checks if the operating system is currently running Snow Leopard.

  def self.is_snow_leopard
    self.is("Snow Leopard")
  end

  # Checks if the operating system is currently running Leopard.

  def self.is_leopard
    self.is("Leopard")
  end

  # Checks if the operating system is currently running Tiger.

  def self.is_tiger
    self.is("Tiger")
  end
  
end
