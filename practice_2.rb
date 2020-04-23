# require "byebug"

# # def hello(num)
# #     if num > 2
# #         return "yes"
# #     end

# #     if 12 / 4 == 3
# #         return "no"
# #     end
    
# # end

# # p "Enter your name:"
# # name = gets.chomp
# # p "hello " + name

# # p "Enter your number:"
# # num = gets.chomp.to_i
# # p "2 to the " + num.to_s + "th power is... " + (2**num).to_s + "!!!"



# def longest_slide_down(pyramid)
#   arr = []
#   i = pyramid[1].index(pyramid[1].max)
#   j = 0
  

# #   if pyramid.length == 2 //////recursive attempt ? not sure how to include the index component
# #     arr.unshift(pyramid[0][0], pyramid[1].max)
# #     return arr.sum
# #   else
# #     pyramid.longest_slide_down()
#     pyramid.map! {|row| row.push(0).unshift(0)}

#     pyramid.each do |sub|
#         sub[j-1..j+1].each.with_index.inject do |acc, (num, i)| 
#             if acc > num
#                 arr << acc
#                 j = i
#             else
#                 arr << num
#                 j = i + 1
#             end
#         end
#     end

#     arr

# #   while j < pyramid.length
# #     pyramid.each
# #     if i == 0
# #       arr << pyramid[j][i..i+1].max
# #     elsif nil == pyramid[j][i+1]
# #       arr << pyramid[j][i-1..i].max
# #     else
# #       arr << pyramid[j][i-1..i+1].max
# #     end
# #     i = pyramid[j].index(pyramid[j].max)
# #     j += 1
# #   end
# #   arr.sum
# end

# puts longest_slide_down(
#  [[75],
#   [95, 64],
#   [17, 47, 82],
#   [18, 35, 87, 10],
#   [20,  4, 82, 47, 65],
#   [19,  1, 23, 75,  3, 34],
#   [88,  2, 77, 73,  7, 63, 67],
#   [99, 65,  4, 28,  6, 16, 70, 92],
#   [41, 41, 26, 56, 83, 40, 80, 70, 33],
#   [41, 48, 72, 33, 47, 32, 37, 16, 94, 29],
#   [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14],
#   [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57],
#   [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48],
#   [63, 66,  4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31],
#   [ 4, 62, 98, 27, 23,  9, 70, 98, 73, 93, 38, 53, 60,  4, 23]])


def my_sort(arr)
    return arr if arr.length == 1
    max = arr.index(arr.max)
    my_sort(arr[0...max] + arr[max+1..-1]) + [arr[max]]
end

arr = [2,5,4,87,3 ,234, 32, 56, 778, 234, 12, 32]
p my_sort(arr)