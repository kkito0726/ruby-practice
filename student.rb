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
        avg > border ? true : false
    end

    attr_accessor :name
end


def main()
    students = ["A", "B", "C", "D"]
    students_num = students.length
    scores = [
        [68, 77, 98, 34, 56],
        [58, 86, 73, 29, 47],
        [78, 93, 85, 73, 85],
        [29, 39, 48, 53, 29]
    ]
    border = 60
    avg_list = Array.new(students_num)
    isPassed = Array.new(students_num)
    for i in 0..students_num-1 do
        student = Student.new(students[i])
        avg_list[i] = student.cal_avg(scores[i])
        isPassed[i] = student.judge(avg_list[i], border)
    end

    # 合否結果を出力
    print "氏名を入力: "
    name = gets.chomp
    id = students.index(name)
    if isPassed[id]
        puts "平均点は#{avg_list[id]}点で合格です！！"
    else
        puts "平均点は#{avg_list[id]}点で、あと#{border-avg_list[id]}点足りませんでした..."
    end
end

main()
