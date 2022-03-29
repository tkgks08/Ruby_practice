LINE = "--------------------------------"

class BaseballTeam
    GREETING = 0
    WRITE_TEAM_INFO = 1
    VIEW_TEAM_INFO = 2
    END_PROGRAM = 3
end

players = []

def greeting
  puts "みなさんこんにちわ！"
  puts "よろしくお願いします。"
  return
end

def wrtie_team_info(players)
    player = {}
    puts "選手の名前を入力してください"
    player[:name] = gets.chomp
    puts "選手の評価を0~100で入力してください"
    player[:assessment] = gets.chomp.to_i

    if player[:assessment] >100 || player[:assessment] < 0
        puts LINE
        puts "正しい値を入力してください"
        puts LINE
        return
    end
    
    puts "選手に対する思いを書いてください"
    player[:feeling] = gets.chomp

    players << player
    puts players
end

def review_player_profile(players)
    if players = []
        puts "先に書き込みをしてください"
        wrtie_team_info(players)
    end

    puts "閲覧したい選手を選んでください。"
    index = 0
    players.each do |player|
        puts "#{index}: #{player[:name]}" 
        index =+ 1
    end
   selected_number = gets.chomp.to_i
   selected_player = players[selected_number]
   puts LINE
   puts "名前: #{selected_player[:name]}\n 評価:#{selected_player[:assessment]}\n選手への一言:#{selected_player[:feeling]}"
   puts LINE
end

while true do
    puts "以下のメニューからご希望のものをお選びください"
    puts "#{BaseballTeam::GREETING}: 挨拶"
    puts "#{BaseballTeam::WRITE_TEAM_INFO}: チーム情報を書き込む"
    puts "#{BaseballTeam::VIEW_TEAM_INFO}: チーム情報を見る"
    puts "#{BaseballTeam::END_PROGRAM}: プログラムの終わり\n#{LINE}"

    choice = gets.chomp.to_i

  case choice
    when BaseballTeam::GREETING
        greeting() 
    when BaseballTeam::WRITE_TEAM_INFO
        wrtie_team_info(players)
    when BaseballTeam::VIEW_TEAM_INFO
        review_player_profile(players)
    when BaseballTeam::END_PROGRAM
        puts "END_PROGRAM"
        exit
    else
        puts "入力が正しくありません"
  end
end