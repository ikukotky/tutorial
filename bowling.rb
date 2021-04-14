#!/usr/bin/env ruby

score = ARGV[0]
scores = score.split(',')
shots = []
scores.each do |s|
	if s == 'X'
		shots << 10
		shots << 0
	else
		shots << s.to_i
	end
end

frames = Array.new(0)
shots.each_slice(2) do |s|
	frames << s
end

point = 0
frames.each_with_index do |frame, i|
	if frame[0] == 10 && frames[12] 
		point += frame.sum
	elsif	frame[0] == 10 
		point += 10 + frames[i + 1].sum
	elsif frames[i].sum == 10
		point += 10 + frames[i + 1][0]
	else
		point += frame.sum
	end
end
p point
