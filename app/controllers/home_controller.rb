class HomeController < ApplicationController
  def index; end

  def type;end

  def faqs; end

  def profile_psychologist; 
    
  end

  def psychologist_List
    @Psychologist = Psychologist.order(params[:value])
    puts params[:value]
  end

  def sort_list
    @Psychologist = Psychologist.order(params[:value])
    puts params[:value]
  end


  
end
