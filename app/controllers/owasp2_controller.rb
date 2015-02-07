class Owasp2Controller < ApplicationController
  def index
    @authorized = admin?()
  end

  def login
    redirect_to(controller: 'owasp2', action:'index', params: {loggedin: false})
  end

  def admin?
    return (params[:loggedin] == "true")
  end
end
