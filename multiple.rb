def multiple(num)
    for i in 1..num
        for j in 1..num do
            puts i.to_s + " x " + j.to_s + " = " + (i*j).to_s
        end
    end
    return num * num
end

ans = multiple(20)
puts ans