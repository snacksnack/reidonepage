ActionMailer::Base.smtp_settings = {
	address: "smtp.gmail.com",
	port: '587',
	domain: 'hihelloreid.com',
	user_name: 'hihelloreid@gmail.com',
	password: 'franz13!',
	authentication: 'plain',
	enable_starttls_auto: true
}