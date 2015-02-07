class Owasp10Controller < ApplicationController
  def index
    if (session[:owasp10_loggedin].nil?)
      session[:owasp10_loggedin] = false
    end
  @authed = false
    if (authed?)
      @authed = true
    end

  end

  def login

  end

  def do_login
    session[:owasp10_loggedin] = true
    redirect_to(params[:redir])
  end

  def logout
    session[:owasp10_loggedin] = false
    redirect_to(controller: 'owasp10', action: 'index')
  end

  def authed?
    return session[:owasp10_loggedin]
  end
end
