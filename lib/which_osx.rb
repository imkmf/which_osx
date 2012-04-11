# A simple tool to determine the current version of Mac OS X.

# Regex for "##.#.#"
output = `sw_vers`.scan(/\d\d\.\d\.\d/).flatten.to_s

# Take out some weird bits
output.delete! "[]\""
VERSION = output

module WhichOSX
  def self.version
    short_version = VERSION
    return short_version
    
  rescue Errno::ENOENT
    puts "It looks like you aren't using Mac OS X. Sorry!"
    
  end

  def self.full_version
    full_version = "Mac OS X " + VERSION
    return full_version
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
end
