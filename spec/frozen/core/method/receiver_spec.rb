require File.expand_path('../../../spec_helper', __FILE__)
require File.expand_path('../fixtures/classes', __FILE__)

describe "Method#receiver" do
  ruby_version_is '1.8.7' do
    it "returns the receiver of the method" do
      s = "abc"
      s.method(:upcase).receiver.should equal(s)
    end
    
    it "returns the right receiver even when aliased" do
      obj = MethodSpecs::Methods.new
      obj.method(:foo).receiver.should equal(obj)
      obj.method(:bar).receiver.should equal(obj)
    end
  end
end