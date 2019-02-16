class InquiryMailer < ApplicationMailer
  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
      from:"collectiver.mailer@gmail.com",
      to:"collectiver.mailer@gmail.com",
      subject:"お問い合わせがありました！"
      )
  end
end
