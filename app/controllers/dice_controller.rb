class DiceController < ApplicationController
  def two_six
    @rolls = []    # Create a blank array
    2.times do    # 2 times...
      die = rand(1..6)    # Generate a random number
      @rolls.push(die)    # Add the random number to the array 
    end
    render({ :template => "dice_templates/2d6"})
  end

  def two_ten
    @rolls = []    # Create a blank array
  
    2.times do    # 2 times...
      die = rand(1..10)    # Generate a random number
  
      @rolls.push(die)    # Add the random number to the array 
    end
    
    render({ :template => "dice_templates/2d10"})
  end
  
  def one_twenty
    @rolls = []    # Create a blank array
  
    1.times do    # 1 times...
      die = rand(1..20)    # Generate a random number
  
      @rolls.push(die)    # Add the random number to the array 
    end
    
    render({ :template => "dice_templates/1d20"})
  end
  
  def five_four
    @rolls = []    # Create a blank array
  
    5.times do    # 5 times...
      die = rand(1..4)    # Generate a random number
  
      @rolls.push(die)    # Add the random number to the array 
    end
    
    render({ :template => "dice_templates/5d4"})
  end
  
  def homepage
    render({ :template => "dice_templates/home"})
  end

end
