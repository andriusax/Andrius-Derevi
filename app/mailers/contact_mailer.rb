class ContactMailer < ApplicationMailer
  default to: "a.dereviancenko@gmail.com"

  def contact_email(name:, email:, message:)
    @name    = name
    @email   = email
    @message = message
    mail(
      from:     "\"#{name}\" <a.dereviancenko@gmail.com>",
      reply_to: email,
      subject:  "New message from #{name}"
    )
  end
end
