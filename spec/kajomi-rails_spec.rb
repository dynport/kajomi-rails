require 'spec_helper'

describe "Kajomi::Rails" do
  let(:api_client) { Kajomi::ApiClient.new("dynport", "KAJOMI_API_KEY") }

  it "should set the shared key" do
    ActionMailer::Base.kajomi_settings = {shared_key: "dynport", secret_key: "KAJOMI_SECRET_KEY"}
    ActionMailer::Base.kajomi_settings[:shared_key].should == "dynport"
  end

  it "should set the secret key" do
    ActionMailer::Base.kajomi_settings = {secret_key: "KAJOMI_SECRET_KEY", shared_key: "dynport"}
    ActionMailer::Base.kajomi_settings[:secret_key].should == "KAJOMI_SECRET_KEY"
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
