module PsychologistHelper

  def age(current_psychologist)
    now = Time.now.utc.to_date
    birth_year = current_psychologist.birth.year
    now.year - birth_year - (current_psychologist.birth.to_date.change(:year => now.year) > now ? 1 : 0)
  end
  
end
