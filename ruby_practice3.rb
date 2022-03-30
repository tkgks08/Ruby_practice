class TaxApp
    TAX_CALCULATION = 1
    GET_OUT = 2
  end

def tax_calculation(name)
   puts "合計額を入力してください"
  summm = gets.chomp.to_i
  
  if summm < 10
    puts "入力の値が誤っています"
    return
  else
    return sum_with_tax = summm*1.1
  puts "#{name}さん、あなたの税金の額は#{sum_with_tax}です"
  end

  puts "終わりです"
end

def get_out(name)
    puts "#{name}さん、ありがとうございました。"
    exit
end

while true do
    puts "あなたの名前を入力してください"
    name = gets.chomp
    puts "数字で選択してください"
    puts "1. 税金計算"
    puts "2. おわり"

  num = gets.chomp.to_i

  case num
    when TaxApp::TAX_CALCULATION
        tax_calculation(name)
    when TaxApp::GET_OUT
        get_out(name)
    end
end
