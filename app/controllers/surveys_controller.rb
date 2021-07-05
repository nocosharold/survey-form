class SurveysController < ApplicationController
  def new
  end

  def create
    session[:current_name] = user_params[:name]    

    puts user_params[:name]    
    puts session[:current_name]
    session[:n_time] = (session[:n_time] ? session[:n_time] : 0) + 1
    session[:survey] =  user_params
    flash[:notice] = "Thanks for Submitting this form! You have submitted this form #{session[:n_time]} times now"
    redirect_to "/surveys/result"
  end

  def result 
    @sess_data = session[:survey] 
  end

  private
    def user_params
      params.require(:survey).permit(:name, :location, :language,:comment)
    end
end
