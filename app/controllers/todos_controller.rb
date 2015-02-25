class TodosController < ApplicationController
  def index
    @todos = session[:todos] ||= []
  end

  def create
  #add a todo to the session [:todo]
  session[:todos] << params[:task]
  redirect_to '/todos'
  end

  def delete
    #clear the session [:todos]
    session[:todos] = nil

    redirect_to '/todos'
  end

  def delete_one
    session[:todos].delete(params[:todo])
    redirect_to '/todos'
  end

end
