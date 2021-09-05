  puts "じゃんけん..."
def janken
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  player_hand = gets.to_i
  program_hand = rand(2)
  jankens = ["グーを出しました","チョキを出しました","パーを出しました"]
  puts "ホイ！"
  puts "--------------"
  puts "あなた:#{jankens[player_hand]}\n相手:#{jankens[program_hand]}"
  
   win = (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
   lose = !(win)
   draw = player_hand == program_hand
  if draw
    puts "あいこで..."
    @result = "draw"
    return true
  elsif win
    puts "あなたの勝ちです"
    @result = "win"
    return false
  elsif player_hand == 3
    puts "あなたはじゃんけんをしませんでした"
    exit
  elsif lose
    puts "あなたの負けです"
    @result = "lose"
    return false
  end
end
  next_game = true
  while next_game do
    next_game = janken
  end
  
def direction
  if  @result == "win"
  puts "--------------"
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  player_finger = gets.to_i
  program_face = rand(3)
  direction = ["上","下","左","右"]
  puts "ホイ！"
  puts "--------------"
  puts "あなた:#{direction[player_finger]}\n相手:#{direction[program_face]}"
  if player_finger == program_face
    puts "あなたの勝利"
  elsif player_finger != program_face
    puts "やり直し"
    return true
  end
  end
  if @result == "lose"
  puts "--------------"
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  player_face = gets.to_i
  program_finger = rand(3)
  direction = ["上","下","左","右"]
  puts "ホイ！"
  puts "--------------"
  puts "あなた:#{direction[player_face]}\n相手:#{direction[program_finger]}"
  if player_face == program_finger
    puts "あなたの敗北"
  elsif player_face != program_finger
    puts "やり直し"
    return true
  end
  end
end
  next_game = true
  while next_game do
    next_game = direction
  end