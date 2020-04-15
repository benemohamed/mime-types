require "json"
require "./errors/MimeException"
require "./type/type"

# require "yaml"

#
#  @Author: flydreame
#  @Date: 2020-04-15 14:44:06
#  @Desc:

# use function list
# str.upcase
# str.downcase
# class Path.new(str).extension to get the extension name
# In Crystal everything is an object

module Mime
  class Mime::Type
    @EXTRACT_TYPE_REGEXP = /^\s*([^;\s]*)(?:;|\s|$)/
    @TEXT_TYPE_REGEXP = /^text\//i

    # @@extensions : JSON

    # types : JSON::Any

    # @TYPES = nil

    # init
    def initialize
      file = File.open("/var/www/github/crystalapp/mime-types/src/db.json") do |file|
        data = JSON.parse(file)

        # puts data
      end
    end

    # Get the default charset for a MIME `type`.
    def charset(type : String)
      if type.is_a?(String)
        file = File.open("/var/www/github/crystalapp/mime-types/src/db.json") do |file|
          data = JSON.parse(file)
          # return data
        end
      end
    end

    # Create a full Content-Type header given a MIME type or extension.
    def contentType(str : String)
      if str.is_a?(String)
      end
    end

    # Get the default extension for a MIME `type`.
    def extension(type : String) : JSON::Any | Nil
      if type.is_a?(String)
        file = File.open("/var/www/github/crystalapp/mime-types/src/db.json") do |file|
          data = JSON.parse(file)
          return data[type]["extensions"][0]
        end
      end
    end

    # Lookup the MIME type for a file `path/extension`.
    def lookup(path : String) : Bool | String | Nil
      if path.is_a?(String)
        extension = Path.new(path).extension
        if (extension == "")
          return false
        else
          return extension.downcase
        end
      end
    end
  end

  VERSION = "0.1.0"
end

mime = Mime::Type.new
# lookup = mime.lookup("file.json")                      # 'application/json'
# extension = mime.extension("application/octet-stream") # 'bin'
# contentType = mime.contentType("markdown")             # 'text/x-markdown; charset=utf-8'
# charset = mime.charset("text/markdown") # UTF-8

# puts lookup
# puts mime.inspect

# puts typeof(extension)
# puts /foo|bar/.match("file.json")
# puts "sss".upcase
# puts Path.new("index").extension
