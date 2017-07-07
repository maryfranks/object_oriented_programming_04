class System


  @@bodies = []

  def self.all
    @@bodies
  end

  def add(variable)
    @@bodies << variable
    return @@bodies.last
  end

  def total_mass
    # add up all the masses of all the bodies
    sum = 0
    @@bodies.each do |body|
      sum += body.mass
    end
    return sum
  end

end

class Body

  attr_reader :mass, :name

  def initialize(name, mass)
    @name = name
    @mass = mass
  end

end

class Star < Body

attr_reader :type

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end

end

class Planet < Body

  attr_reader :day, :year

  def initialize(name, mass, hours_in_a_day, days_in_year)
    super(name, mass)
    @day = hours_in_a_day
    @year = days_in_year
  end

end

class Moon < Body

  attr_reader :month, :planet

  def initialize(name, mass, days_to_orbit_planet, planet_it_orbits)
    super(name, mass)
    @month = days_to_orbit_planet
    @planet = planet_it_orbits
  end

end
