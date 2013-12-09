class TestMailer < ActionMailer::Base
  def basic_message
    mail(to: "manuel.boy@dynport.de", subject: "Kajomi Mail Test", from: "info@dynport.de")
  end
end
