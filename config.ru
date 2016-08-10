require_relative 'config/environment'
require_relative 'web-app/controllers/memo_controller'
class App
  def call(env)
    case env["PATH_INFO"]
    when '/memos'
      puts "Hit the memos route"
      MemoController.index
    else
      [404, {"Content-Type" => "text/html"}, ["<h1>NOT FOUND WANKER</h1>"]]
  end
  end
end

run App.new
