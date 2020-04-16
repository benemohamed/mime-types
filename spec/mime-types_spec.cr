require "./spec_helper"

describe Mime::Type do
  mime = Mime::Type.new
  # TODO: Write tests
  describe "#new" do
    it "new successfully" do
      mime = Mime::Type.new
      mime.should be_truthy
      true.should eq(true)
    end
  end

  describe ".contentType(type)  " do
    it "should attach charset to text/markdown; charset=utf-8" do
      "text/markdown; charset=utf-8".should eq(mime.contentType("markdown"))
    end
    it "should attach charset to \"application/json\"" do
      "application/json; charset=utf-8".should eq(mime.contentType("application/json"))
    end
    it "should attach charset to \"text/html\"" do
      "text/html; charset=utf-8".should eq(mime.contentType("text/html; charset=utf-8"))
    end
    it "should not alter \"text/html; charset=iso-8859-1\"" do
      "text/html; charset=iso-8859-1".should eq(mime.contentType("text/html; charset=iso-8859-1"))
    end
    it "should return false for unknown types" do
      false.should eq(mime.contentType("application/x-bogus"))
      false.should eq(mime.contentType("TEXT/HTML"))
    end
  end

  describe ".extension(type) " do
    it "should return extension for mime type" do
      "html".should eq(mime.extension("text/html"))
    end
    it "should return false for unknown type" do
      false.should eq(mime.extension("application/x-bogus"))
    end
    it "should return false for non-type string" do
      false.should eq(mime.extension("bogus"))
    end
    it "should return false for non-strings" do
      false.should eq(mime.extension("undefined"))
    end
    it "should return extension for mime type with parameters" do
      "html".should eq(mime.extension("text/html;charset=UTF-8"))
      "html".should eq(mime.extension("text/HTML; charset=UTF-8"))
      "html".should eq(mime.extension("text/html; charset=UTF-8"))
      "html".should eq(mime.extension("text/html; charset=UTF-8 "))
    end
  end

  describe ".lookup(extension) " do
    it "should return mime type for \".html\"" do
      "text/html".should eq(mime.lookup(".html"))
    end
    it "should return mime type for \".js\"" do
      "text/javascript".should eq(mime.lookup(".js"))
    end
    it "should return mime type for \".json\"" do
      "application/json".should eq(mime.lookup(".json"))
    end
    it "should return mime type for \".rtf\"" do
      "application/rtf".should eq(mime.lookup(".rtf"))
    end
    it "should return mime type for \".txt\"" do
      "text/plain".should eq(mime.lookup(".txt"))
    end
    it "should return mime type for \".xml\"" do
      "application/xml".should eq(mime.lookup(".xml"))
    end
    it "should return false for unknown extension" do
      false.should eq(mime.lookup("bogus"))
    end
    it "should return false for non-strings" do
      false.should eq(mime.lookup("undefined"))
    end
  end
  describe ".lookup(path)" do
    it "should return mime type for file name" do
      "text/html".should eq(mime.lookup("page.html"))
    end
    it "should return mime type for relative path" do
      "text/html".should eq(mime.lookup("/path/to/page.html"))
    end
    it "should return mime type for absolute path" do
      "text/html".should eq(mime.lookup("C:\\path\\to\\page.html"))
    end
    it "should be case insensitive" do
      "text/html".should eq(mime.lookup("/path/to/PAGE.HTML"))
    end
    it "should return false for unknown extension" do
      false.should eq(mime.lookup("/path/to/file.bogus"))
    end
    it "should return false for path without extension" do
      false.should eq(mime.lookup("/path/to/json"))
    end
  end
  describe "Test db file" do
    it "" do
    end
  end
end
