class Food
    attr_accessor :name
    attr_accessor :price

    def initialize(name:, price:)
        self.name = name
        self.price = price
    end
end

food1 = Food.new(name: "ピザ", price: 300)
food2 = Food.new(name: "寿司", price: 200)

foods = [food1, food2]

index = 0

foods.each do |food|
  puts "#{index}.#{food.name}: #{food.price}"
  index =+ 1
end

puts "---------------------------------------------"
puts "メニューの番号を選択してください。"
selected_menu = gets.chomp.to_i

puts foods.length

if selected_menu > foods.length || selected_menu < 0 
    puts "正しい数値を入力ください"
    puts "残念ですが、またコンソールでコードを呼び出してください"
    return
end

puts "選択されたメニュー:#{foods[selected_menu].name}"
puts "個数を入力してください(3つ以上で100円引き)"
number_of_orders = gets.chomp.to_i

if number_of_orders >= 0
    sum = number_of_orders * foods[selected_menu].price
    puts "合計は#{sum-100}円です"
else
    puts "合計は#{sum}円です"
end

exit

