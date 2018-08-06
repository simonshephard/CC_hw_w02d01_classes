require('minitest/autorun')
require ('minitest/rg')
require_relative('../homework.rb')

class StudentTest < MiniTest::Test

  def test_get_student_name
    student = Student.new('Simon', 'E24')
    assert_equal('Simon', student.name)
  end

  def test_get_student_cohort
    student = Student.new('Cristian', 'E24')
    assert_equal('E24', student.cohort)
  end

  def test_set_name
    student = Student.new('Simon', 'E24')
    student.set_name('Craig')
    assert_equal('Craig', student.name)
  end

  def test_set_cohort
    student = Student.new('Simon', 'E24')
    student.set_cohort('G24')
    assert_equal('G24', student.cohort)
  end

  def test_talk
    student = Student.new('Simon', 'E24')
    assert_equal('I can talk!', student.talk)
  end

  def test_fav_lang
    student = Student.new('Simon', 'E24')
    assert_equal('I love Ruby', student.fav_lang('Ruby'))
  end
end



class TeamTest < MiniTest::Test

  def test_get_name
    team = Team.new('Hibs', ['Player_1', 'Player_2', 'Player_3', 'Player_4'], 'Alan')
    assert_equal('Hibs', team.name)
  end

  def test_get_players
    team = Team.new('Hibs', ['Player_1', 'Player_2', 'Player_3', 'Player_4'], 'Alan')
    assert_equal(['Player_1', 'Player_2', 'Player_3', 'Player_4'], team.players)
  end

  def test_get_coach
    team = Team.new('Hibs', ['Player_1', 'Player_2', 'Player_3', 'Player_4'], 'Alan')
    assert_equal('Alan', team.coach)
  end

  def test_set_coach
    team = Team.new('Hibs', ['Player_1', 'Player_2', 'Player_3', 'Player_4'], 'Alan')
    team.coach = ('Simon')
#   team.set_coach('Simon')
    assert_equal('Simon', team.coach)
  end

  def test_add_new_player
    team = Team.new('Hibs', ['Player_1', 'Player_2', 'Player_3', 'Player_4'], 'Alan')
    team.add_new_player('Player_5')
    assert_equal(['Player_1', 'Player_2', 'Player_3', 'Player_4', 'Player_5'], team.players)
  end

  def test_check_players
    team = Team.new('Hibs', ['Player_1', 'Player_2', 'Player_3', 'Player_4'], 'Alan')
    assert_equal(true, team.check_players('Player_1'))
  end

  def test_win_or_lose
    team = Team.new('Hibs', ['Player_1', 'Player_2', 'Player_3', 'Player_4'], 'Alan')
    team.update_points('win')
    assert_equal(3, team.points)
  end
end
