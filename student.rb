class Student
    def initialize(name)
        @name = name
    end

    def cal_avg(data)
        sum = 0
        for score in data
            sum += score
        end
        avg = sum / data.length
        return avg
    end

    def judge(avg, border)
        if avg > border
            puts "合格！！！"
        else
            puts "不合格"
        end
    end

    attr_accessor :name
end

a001 = Student.new("kito")
avg = a001.cal_avg([90,30,70])
puts a001.name
a001.judge(avg, 60)
