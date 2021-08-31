module ApplicationHelper
    
  def age(current_user)
    now = Time.now.utc.to_date
    birth_year = current_user.birth.year
    now.year - birth_year - (current_user.birth.to_date.change(:year => now.year) > now ? 1 : 0)
  end
  
end
