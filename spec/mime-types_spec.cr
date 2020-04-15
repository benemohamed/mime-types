require "./spec_helper"

describe Mime::Type do
  mime = Mime::Type.new
  # TODO: Write tests
  describe "#new" do
    it "new successfully" do
      book = Mime::Type.new
      book.should be_truthy
      true.should eq(true)
    end
  end
  describe ".charset(type) " do
    it "should return \"UTF-8\" for \"application/json\"" do
      "UTF-8".should eq(mime.charset("application/json"))
    end
    it "should return \"UTF-8\" for \"application/json; foo=bar\"" do
      "UTF-8".should eq(mime.charset("application/json; foo=bar"))
    end
    it "should return \"UTF-8\" for \"application/javascript\"" do
      "UTF-8".should eq(mime.charset("application/javascript"))
    end
    it "should return \"UTF-8\" for \"application/JavaScript\"" do
      "UTF-8".should eq(mime.charset("application/JavaScript"))
    end
    it "should return \"UTF-8\" for \"text/html\"" do
      "UTF-8".should eq(mime.charset("text/html"))
    end
    it "should return \"UTF-8\" for \"TEXT/HTML\"" do
      "UTF-8".should eq(mime.charset("TEXT/HTML"))
    end
    it "should return \"UTF-8\" for any text/*" do
      "UTF-8".should eq(mime.charset("text/x-bogus"))
    end
    it "should return false for unknown types" do
      false.should eq(mime.charset("application/x-bogus"))
    end
    it "should return false for any application/octet-stream" do
      false.should eq(mime.charset("application/octet-stream"))
    end
    # it "should return false for invalid arguments" do
    #   false.should eq(mime.contentType("application/octet-stream"))
    # end
  end

  # describe ".contentType(type)  " do
  #   it "should attach charset to \"application/json\"" do
  #     "application/json; charset=utf-8".should eq(mime.contentType("application/json"))
  #   end
  #   it "should attach charset to \"application/json; foo=bar\"" do
  #     "application/json; foo=bar; charset=utf-8".should eq(mime.contentType("application/json; foo=bar"))
  #   end
  #   it "should attach charset to \"TEXT/HTML\"" do
  #     "TEXT/HTML; charset=utf-8".should eq(mime.contentType("TEXT/HTML"))
  #   end
  #   it "should attach charset to \"text/html\"" do
  #     ".html".should eq(mime.contentType("text/html; charset=utf-8"))
  #   end
  #   it "should not alter \"text/html; charset=iso-8859-1\"" do
  #     "text/html; charset=iso-8859-1".should eq(mime.contentType("text/html; charset=iso-8859-1"))
  #   end
  #   it "should return type for unknown types" do
  #     "application/x-bogus".should eq(mime.contentType("application/x-bogus"))
  #   end
  # end

  # describe ".extension(type) " do
  #   it "should return extension for mime type" do
  #     "html".should eq(mime.extension("text/html"))
  #   end
  #   it "should return false for unknown type" do
  #     false.should eq(mime.extension("application/x-bogus"))
  #   end
  #   it "should return false for non-type string" do
  #     false.should eq(mime.extension("bogus"))
  #   end
  #   it "should return false for non-strings" do
  #     false.should eq(mime.extension("undefined"))
  #   end
  #   it "should return extension for mime type with parameters" do
  #     "html".should eq(mime.extension("text/html;charset=UTF-8"))
  #     "html".should eq(mime.extension("text/HTML; charset=UTF-8"))
  #     "html".should eq(mime.extension("text/html; charset=UTF-8"))
  #     "html".should eq(mime.extension("text/html; charset=UTF-8 "))
  #     "html".should eq(mime.extension("text/html ; charset=UTF-8"))
  #   end
  # end

  # describe ".lookup(extension) " do
  #   it "should return mime type for \".html\"" do
  #     "text/html".should eq(mime.lookup(".html"))
  #   end
  #   it "should return mime type for \".js\"" do
  #     "application/javascript".should eq(mime.lookup(".js"))
  #   end
  #   it "should return mime type for \".json\"" do
  #     "application/json".should eq(mime.lookup(".json"))
  #   end
  #   it "should return mime type for \".rtf\"" do
  #     "application/rtf".should eq(mime.lookup(".rtf"))
  #   end
  #   it "should return mime type for \".txt\"" do
  #     "text/plain".should eq(mime.lookup(".txt"))
  #   end
  #   it "should return mime type for \".xml\"" do
  #     "application/xml".should eq(mime.lookup(".xml"))
  #   end
  #   it "should work without the leading dot" do
  #     "text/html".should eq(mime.lookup("html"))
  #   end
  #   it "should be case insensitive" do
  #     "text/html".should eq(mime.lookup("HTML"))
  #   end
  #   it "should return false for unknown extension" do
  #     false.should eq(mime.lookup("bogus"))
  #   end
  #   it "should return false for non-strings" do
  #     false.should eq(mime.lookup("undefined"))
  #   end
  # end
  # describe ".lookup(path)" do
  #   it "should return mime type for file name" do
  #     "text/html".should eq(mime.lookup("page.html"))
  #   end
  #   it "should return mime type for relative path" do
  #     "text/html".should eq(mime.lookup("/path/to/page.html"))
  #   end
  #   it "should return mime type for absolute path" do
  #     "text/html".should eq(mime.lookup("C:\\path\\to\\page.html"))
  #   end
  #   it "should be case insensitive" do
  #     "text/html".should eq(mime.lookup("/path/to/PAGE.HTML"))
  #   end
  #   it "should return false for unknown extension" do
  #     false.should eq(mime.lookup("/path/to/file.bogus"))
  #   end
  #   it "should return false for path without extension" do
  #     false.should eq(mime.lookup("/path/to/json"))
  #   end
  # end
  describe "Test db file" do
    it "" do
    end
  end
end
