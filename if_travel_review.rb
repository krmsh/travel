# 以下参考コード全体(要リファクタリング)
​
​
plans = [
   { name: "沖縄旅行", price: 10000},
   { name: "北海道旅行", price: 20000},
   { name: "九州旅行", price: 15000},
 ]
​
puts "旅行プランを選択して下さい。"
plans.each.with_index(1) do |plan, i|
  puts "#{i}. #{plan[:name]}(¥#{plan[:price]})"
end
​
select_num = gets.to_i - 1
chosen_plan = plans[select_num]
​
puts "プランを選択 > #{chosen_plan[:name]}(¥#{chosen_plan[:price]})"
puts "#{chosen_plan[:flight]}ですね、何人で行きますか？"
​
people = gets.to_i
total_fee = chosen_plan[:price] * people
​
if people >= 5
  discount_total_fee = (total_fee * 0.9).floor
  puts "5人以上なので10%割引となります。"
  puts "合計料金:¥#{discount_total_fee}"
else
  puts "合計料金:¥#{total_fee}"
end