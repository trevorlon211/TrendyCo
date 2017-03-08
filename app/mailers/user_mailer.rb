class UserMailer < ApplicationMailer
  default from: "trevorlon.211@gmail.com"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email,
      :to => 'trevorlon.211@gmail.com"',
      :subject => "A new contact form message from #{name}")
  end
end
