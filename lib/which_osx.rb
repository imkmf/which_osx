# A simple tool to determine the current version of Mac OS X.

# Regex for "##.#.#"
output = `sw_vers`.scan(/\d\d\.\d\.\d/).flatten.to_s

# Take out some weird bits
output.delete! "[]\""
VERSION = output

class WhichOSX
  def self.version
    short_version = VERSION
    return short_version
    
  rescue Errno::ENOENT
    puts "It looks like you aren't using Mac OS X. Sorry!"
    
  end

  def self.full_name
    full_name = "Mac OS X " + VERSION
    return full_name
  end

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

  def self.is_mountain_lion
    return true unless short_name != "Mountain Lion"
  end

  def self.is_lion
    return true unless short_name != "Lion"
  end

  def self.is_snow_leopard
    return true unless short_name != "Snow Leopard"
  end

  def self.is_leopard
    return true unless short_name != "Leopard"
  end

  def self.is_tiger
    return true unless short_name != "Tiger"
  end
end
