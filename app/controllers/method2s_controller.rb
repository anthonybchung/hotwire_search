class Method2sController < ApplicationController

  def index
    if params[:query].nil?
      @projects = Project.all
    else
      @projects = Project.where("LOWER(name) LIKE ?", "%#{params[:query].downcase}%")
    end
  end
end
