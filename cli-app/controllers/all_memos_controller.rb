class AllMemosController
  def initialize
    puts "Here are all of the memos you have so far"
    Memo.all.each.with_index(1) do |memo, index|
      puts  "#{index}. #{memo.body}"
    end
  end
end

