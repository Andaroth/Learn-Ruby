#!/usr/bin/env ruby

class MyProgram
    attr_accessor :a
    attr_accessor :b
    
    def initialize
        print "Premier terme: "
        a = gets.to_i
        print "Second terme: "
        b = gets.to_i

        if a == nil 
            puts "Error"
        elsif b == nil
            puts "Error"
        else
            @a = a
            @b = b
        end
    end

    def minus
        if a == nil 
            puts "Error"
        elsif b == nil
            puts "Error"
        else
            puts "less: " + (a - b).to_s
        end
    end
    
    def divide
        if a == nil 
            puts "Error"
        elsif b == nil
            puts "Error"
        else
            puts "divide: " + (a / b).to_s
        end
    end

    def multi
        if a == nil 
            puts "Error"
        elsif b == nil
            puts "Error"
        else
            puts "multi: " + (a * b).to_s
        end
    end

    def percent
        if a == nil 
            puts "Error"
        elsif b == nil
            puts "Error"
        else
            puts "percent: " + ((a/100)*b).to_s
        end
    end

    def speed
        if a == nil 
            puts "Error"
        elsif b == nil
            puts "Error"
        else
            puts "speed: " + (a / b).to_s + "Km/h"
        end
    end
    
end


if __FILE__ == $0 
    mg = MyProgram.new
    mg.minus
    mg.divide
    mg.multi
    mg.percent
    mg.speed
end