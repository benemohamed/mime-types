require "./errors/MimeException"
require "./type/type"

# require "yaml"
# require "json"

#  @Author: benemohamed
#  @Date: 2020-04-15 14:44:06
#  @Desc: The ultimate content-type utility.

module Mime
  class Mime::Type
    @extension = Mime::EXTENSIONS
    @type = Mime::TYPE

    def initialize
    end

    # Create a full Content-Type header given a MIME type or extension.
    #
    # ```
    # contentType = mime.contentType("markdown") # 'text/markdown; charset=utf-8'
    # ```
    def contentType(str : String) : Array(String) | Bool | Char | String | Nil
      if str.is_a?(String)
        if (str == "")
          return false
        else
          # mimes
          match = /\//.match(str)
          if match == nil
            mime = @type.fetch(str, str)

            if mime === str
              return false
            end
            if mime.size >= 0
              return mime[0] + "; charset=utf-8"
            else
            end
          else
            # extension
            type = str.gsub(/;(.|\n)*?$/, "")
            extension = @extension.fetch(type, type)
            if extension === type
              return false
            end

            if extension.size >= 0
              charsetmatch = /charset/.match(str)
              if charsetmatch == nil
                return str + "; charset=utf-8"
              else
                # strcharset = charsetmatch.to_s.gsub(/;(.|\n)*?$/, "")
                return str
              end
            else
              return false
            end
          end
        end
      end
    end

    # Get the default extension for a MIME `type`.
    #
    # ```
    # extension = mime.extension("application/octet-stream") # 'bin'
    # ```
    def extension(type : String) : Array(String) | Bool | Char | String | Nil
      if type.is_a?(String)
        if (type == "")
          return false
        else
          newtype = type.gsub(/;(.|\n)*?$/, "")
          extension = @extension.fetch(newtype.downcase, newtype.downcase)
          if extension === type
            return false
          end
          if extension.size >= 0
            return extension[0]
          else
          end
        end
      end
    end

    # Lookup the MIME type for a file `path/extension`.
    #
    # ```
    # lookup = mime.lookup("file.json") # 'application/json'
    # ```
    def lookup(path : String) : Array(String) | Bool | Char | String | Nil
      if path.is_a?(String)
        newpath = path.gsub(/^/, "xxxx")
        extension = Path.new(newpath).extension
        if (extension == "")
          return false
        else
          type = extension.downcase.delete &.in?(".")
          mime = @type.fetch(type, type)

          if mime === type
            return false
          end
          if mime.size >= 0
            return mime[0]
          else
          end
        end
      end
    end
  end

  VERSION = "0.1.0"
end
