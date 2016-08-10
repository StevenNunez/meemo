class MemoController
  def self.index
    puts "About to ask for all the records"
    memos = Memo.all
    puts "Got all the memos"
    response = memos.map do |memo|
      list_item_for(memo)
    end
    p response
    puts "about to respond"
    [200, {"Content-Type" => "text/html"}, response]
  end

  def self.list_item_for(memo)
    "<li>#{memo.body}</li>"
  end
end
