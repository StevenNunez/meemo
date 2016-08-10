class NewMemoController
  def initialize
    puts "What would you like record?"
    create_new_memo
    puts "Thanks!"
  end

  def create_new_memo
    response = gets.chomp
    Memo.create(body: response)
  end
end

