require "json"

# alias MimeTypes = Hash(String, MimeType)

module Mime
  class MimeType
    include JSON::Serializable

    property source : String?

    property compressible : Bool?

    property extensions : Array(String)?

    property charset : String?
  end
end
