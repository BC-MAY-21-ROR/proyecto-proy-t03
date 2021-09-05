class HomeController < ApplicationController
  def index; end

  def type;end

  def prices; end

  def faqs; end

  def profile_psychologist; 
    
  end

  def psychologist_list
    
    @psychologist = Psychologist.order(params[:value])
    
  end

  def sort_list

    @psychologist = Psychologist.order(params[:value])
  
  end


  
  def profile_patient; end
  
  def profile_patient; end
  
end
