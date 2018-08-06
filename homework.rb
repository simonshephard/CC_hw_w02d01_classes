class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name()
    return @name
  end

  def cohort()
    return @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk()
    return 'I can talk!'
  end

  def fav_lang(language)
    return "I love #{language}"
  end
end

class Team

attr_reader(:name, :players, :coach, :points)
attr_writer(:coach)

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  # def name()
  #   return @name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end
  #
  # def set_coach(new_coach)
  #   @coach = new_coach
  # end

  def add_new_player(new_player)
    @players << new_player
  end

  def check_players(player_to_check)
    for player in @players
    return true if player == player_to_check
    end
    return
  end

  def update_points(win_or_lose)
    @points +=3 if win_or_lose = 'win'
  end


end
