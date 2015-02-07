class Owasp7Controller < ApplicationController

  def index
    if (session[:owasp7_loggedin].nil?)
        session[:owasp7_loggedin] = false
    end

    @authed = false
    if (authed?)
      @authed = true
    end

    @comments = Comment.where(cat: "FLAC")
  end

  def add
    if (params[:comment].nil?)
      redirect_to(controller: "owasp7", action: "index", data: params[:comment])
      return
    end
    comm = Comment.create(comment: params[:comment])
    comm.username = "Alice"
    comm.cat = "FLAC" # function level access control
    comm.save()
    redirect_to(controller: "owasp7", action: "index", comment: params[:comment])
  end

  def clear
    Comment.destroy_all

    redirect_to(controller: "owasp7", action: "index")
  end

  def login
    session[:owasp7_loggedin] = true

    redirect_to(controller: 'owasp7', action: 'index')
  end

  def logout
    session[:owasp7_loggedin] = false

    redirect_to(controller: 'owasp7', action: 'index')
  end

  def authed?
    if (session[:owasp7_loggedin].nil?)
      return false
    end
    return session[:owasp7_loggedin]
  end

  def make_session

  end
end
