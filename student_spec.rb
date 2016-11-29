require('minitest/autorun')
require_relative('../student')

class StudentSpec < MiniTest::Test

  def test_get_student_name
    add_student_name = Student.new("Steven" , 9 , "" )
    assert_equal("Steven", add_student_name.student_name())
  end

  def test_get_cohort_number
    add_cohort_number = Student.new("Steven" , 9 , "" )
    assert_equal(9, add_cohort_number.cohort_number())
  end

  def test_student_can_talk
    student_talks = Student.new("Steven" , 9 , "" )
    student_talks.speak("I can talk!")
    assert_equal("I can talk!" , student_talks.student_says())
  end

  def test_student_fav_language
    student_lang = Student.new("Steven" , 9 , "" )
    student_lang.say_favorite_language("Ruby")
    assert_equal("I love Ruby", student_lang.favorite_language())
  end

  def test_student_name_change
    student_change = Student.new("Steven", 9 , "")
    student_change.update_info("paul" , 10)
    assert_equal("paul" , student_change.student_name())
  end

  def test_student_cohort_change
    cohort_change = Student.new("Steven" , 9 , "")
    cohort_change.update_info("paul" , 10)
    assert_equal(10 , cohort_change.cohort_number())
  end



end

class TeamSpec < MiniTest::Test

  def test_get_team_name
    add_team_name = Team.new("rangers" , ["player1" , "player2" ,"player3"] , "coach jones",0)
    assert_equal("rangers" , add_team_name.team_name())
  end

  def test_get_player_names
    add_player_names = Team.new("rangers" , ["player1" , "player2" ,"player3"] , "coach jones",0)
    assert_equal(["player1" , "player2" ,"player3"] , add_player_names.players())
  end

  def test_get_coach_name
    add_coach_name = Team.new("rangers" , ["player1" , "player2" ,"player3"] , "coach jones" ,0)
    assert_equal("coach jones" , add_coach_name.coach())
  end

  def test_change_coach_name
    change_coach = Team.new("rangers" , ["player1" , "player2" ,"player3"] , "coach jones",0)
    change_coach.update_coach("coach john")
    assert_equal("coach john" , change_coach.coach())
  end

  def test_add_player
    add_player = Team.new("rangers" , ["player1" , "player2" ,"player3"] , "coach jones",0)
    add_player.update_team("player4")
    assert_equal(["player1" , "player2" ,"player3" , "player4"], add_player.players())
  end

  def test_player_check_true
    player_check = Team.new("rangers" , ["player1" , "player2" ,"player3"] , "coach jones",0)
    
    assert_equal(true , player_check.check_roster("player1"))
  end

  def test_player_check_false
    player_check = Team.new("rangers" , ["player1" , "player2" ,"player3"] , "coach jones",0)
    
    assert_equal(false , player_check.check_roster("player10"))
  end

  def test_add_points_on_win
    win_check = Team.new("rangers" , ["player1" , "player2" ,"player3"] , "coach jones",0)
    assert_equal(3,win_check.update_points("win"))
  end

  def test_no_points_on_loss
    win_check = Team.new("rangers" , ["player1" , "player2" ,"player3"] , "coach jones",0)
       assert_equal(0,win_check.update_points("loss"))
  end


end


