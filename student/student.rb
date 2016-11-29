class Student
  attr_reader :student_name, :cohort_number
  attr_accessor :student_says ,:favorite_language

  def initialize(student_name, cohort_number, student_says )
    @student_name = student_name  
    @cohort_number = cohort_number
    @student_says = student_says
    
  end

  def speak(text)
    @student_says = text
  end

  def say_favorite_language(language)
    @favorite_language = "I love #{language}" 
  end

  def update_info(name , cohort)
    @student_name = name
    @cohort_number = cohort
  end

end

class Team
  attr_accessor :team_name , :players , :coach, :points
  def initialize(team_name , players , coach, points)
      @team_name = team_name
      @players = players
      @coach = coach
      @points = points
  end

  def update_coach(coach_new)
    @coach = coach_new
  end

  def update_team(player_new)
    @players.push(player_new)
  end

  def check_roster(player_name)
    if players.include?(player_name)
      return true
    else
      return false
    end
  end

  def update_points(win_lose)
    
    if win_lose == "win"
      @points += 3
    else 
      @points += 0
    
    end
  end
end