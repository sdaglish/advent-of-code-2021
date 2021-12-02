depth = File.read("sonar-data.txt").split("\n").map(&:to_i)

larger_measurements = 0;

for i in 3..(depth.size()-1)
    three_measurement_window_sum = depth[i] + depth[i-1] + depth[i-2]
    last_three_measurement_window_sum = depth[i-1] + depth[i-2] + depth[i-3]

    if three_measurement_window_sum > last_three_measurement_window_sum
        larger_measurements += 1
    end
end

puts "Number of 3 measurements windows larger than the previous: #{larger_measurements}."