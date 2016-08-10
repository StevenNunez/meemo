class Router
  def initialize
    puts "Welcome to Meemo!"
    start
  end

  def start
    prompt
    offer_options
    route
    start
  end

  def prompt
    puts "What would you like to do?"
  end

  def offer_options
    puts "'new' for a new memo or 'all' to see all of your memos"
  end

  def route
    response = gets.chomp
    case response
    when 'new'
      NewMemoController.new
    when 'all'
      AllMemosController.new
    when 'exit'
      exit
    else
      puts "Invalid Selection"
    end
  end
end
