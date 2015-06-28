class Email < ActionMailer::Base
  default from: "ruby@rails.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email.recepcion.subject
  #
  def recepcion
    @greeting = "Hi"

    mail to: "jlaraojeda@gmail.com", :subject =>"nuestro primer correo"
  end
end
