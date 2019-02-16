class InquiriesController < ApplicationController
  def send_inquiry
    inquiry = Inquiry.new(inquiry_params)
    InquiryMailer.send_mail(inquiry).deliver_now
  end

  
  
  private
  
    def inquiry_params
      params.permit(:name,:message)
    end
end
