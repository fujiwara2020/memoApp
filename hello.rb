require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1
  
  puts "拡張子を除いたファイルを入力して下さい"
  file_title = gets.chomp + ".csv"
  puts "メモしたい内容を入力して下さい"
  puts "完了したらCtrl + Dを押します"

  memo_input = readlines.map(&:chomp)
  
  CSV.open("#{file_title}",'w') do |csv|
    content = memo_input
    csv << content
  end
  
elsif memo_type == 2
  puts "編集したい拡張子を除いたファイルを入力して下さい"
  file_title = gets.chomp + ".csv"
  puts "追記して下さい"
  puts "完了したらCtrl + Dを押します"
  
  memo_input = readlines.map(&:chomp)
  
  CSV.open("#{file_title}",'a') do |csv|
    content = memo_input
    csv << content
  end
  
else
  puts "再度やり直して下さい"
  
end