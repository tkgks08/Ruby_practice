LINE = "---------------"
class BookApp
  WRITE_REVIEW = 0
  DISPLAY_REVIEW = 1
  END_PROGRAM = 2
end

def write_review(posts)
  post = {}
  puts "本のタイトルを入力してください"
  post[:title] = gets.chomp
  puts "本の評価(1 ~ 5)を入力してください"
  post[:point] = gets.chomp.to_i

  if post[:point] < 1 || post[:point] > 5
    puts "評価は1 ~ 5で入力してください"
    return
  end

  puts "本の感想を一言入力してください"
  post[:review] = gets.chomp

  posts << post
end

def display_review(posts)
  index = 0
  posts.each do |post|
    puts "[#{index}] #{post[:title]}"
    index += 1
  end

  puts "見たいレビューの番号を入力してください"
  input = gets.chomp.to_i
  item = posts[input]

  puts LINE
  puts "タイトル: #{item[:title]}"
  puts "評価: #{item[:point]}"
  puts "感想: #{item[:review]}"
  puts LINE
end

posts = []

while true do
  puts "実行したい処理の番号を入力してください"
  puts "投稿レビュー数: #{posts.length}"
  puts "[#{BookApp::WRITE_REVIEW}] 本のレビューを書く"
  puts "[#{BookApp::DISPLAY_REVIEW}] 本のレビューを見る"
  puts "[#{BookApp::END_PROGRAM}] プログラムを終了する\n#{LINE}"

  operation = gets.chomp.to_i

  case operation
  when BookApp::WRITE_REVIEW
    write_review(posts)
  when BookApp::DISPLAY_REVIEW
    display_review(posts)
  when BookApp::END_PROGRAM
    exit
  else
    puts "入力値が正しくありません"
  end
end