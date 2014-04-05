class RegistrationsMailer < ActionMailer::Base

  default :from => "branden@thegoodfolks.org"
  default :to => "branden@thegoodfolks.org"
  #default :bcc => "aris@thegoodfolks.org"

  def new_registration(registration)
    @registration = registration
    mail(:subject => "Someone's interested in The Good Folks!")
  end

end