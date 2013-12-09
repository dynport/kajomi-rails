require 'spec_helper'

describe "Kajomi::Rails" do
  let(:api_client) { Kajomi::ApiClient.new("dynport", "KAJOMI_API_KEY") }

  it "should set the api key" do
    ActionMailer::Base.kajomi_settings = {api_key: "KAJOMI_API_KEY", user: "dynport"}
    ActionMailer::Base.kajomi_settings[:api_key].should == "KAJOMI_API_KEY"
  end

  it "should set the user" do
    ActionMailer::Base.kajomi_settings = {api_key: "KAJOMI_API_KEY", user: "dynport"}
    ActionMailer::Base.kajomi_settings[:user].should == "dynport"
  end

  it "should use kajomi for delivery" do
    Kajomi::ApiClient.any_instance.stub(:deliver_message)
    Kajomi::ApiClient.any_instance.should_receive(:deliver_message) do |message|
      message.subject.should eql "Kajomi Mail Test"
      message.to.should include "manuel.boy@dynport.de"
      message.from.should eql ["info@dynport.de"]
    end

    TestMailer.basic_message.deliver
  end
end
