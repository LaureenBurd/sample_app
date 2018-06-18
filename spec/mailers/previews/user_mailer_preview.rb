# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

	def contact_form(email, name, message)
	  @message = message
	    mail(from: email,
	         to: 'laureen.burd@gmail.com',
	         subject: "A new contact form message from #{name}")
	  UserMailer.contact_form("@email", "@name", "@message")
	end

end
