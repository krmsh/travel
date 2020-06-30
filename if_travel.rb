plans = [
  { flight: "沖縄旅行", price: 10000},
  { flight: "北海道旅行", price: 20000},
  { flight: "九州旅行", price: 15000},
]

puts "旅行プランを選択して下さい。"
plans.each.with_index(1) do |newplans, i|
  puts "#{i}. #{newplans[:flight]}(¥#{newplans[:price]})"
end

chosen_plan = gets.to_i
puts "プランを選択 > #{chosen_plan}"
if chosen_plan == 1
  puts "#{plans[0][:flight]}ですね、何人で行きますか？"
elsif chosen_plan == 2
  puts "#{plans[1][:flight]}ですね、何人で行きますか？"
elsif chosen_plan == 3
  puts "#{plans[2][:flight]}ですね、何人で行きますか？"
else
  puts "旅行プランを正しく選択してください。"
end

people = gets.to_i
if people >= 5
  puts "5人以上なので10%割引となります。"
end

total0 = plans[0][:price] * people
total1 = plans[1][:price] * people
total2 = plans[2][:price] * people


if chosen_plan == 1 && people <= 4
  puts "合計料金:¥#{total0}"
elsif chosen_plan == 2 && people <=4
  puts "合計料金:¥#{total1}"
elsif chosen_plan == 3 && people <= 4
  puts "合計料金:¥#{total2}"
elsif chosen_plan == 1 && people >= 5
  puts "合計料金:¥#{total0 * 0.9}"
elsif chosen_plan == 2 && people >= 5
  puts "合計金額:¥#{total1 * 0.9}"
elsif chosen_plan == 3 && people >= 5
  puts "合計金額:¥#{total2 * 0.9}"
end

