#!/usr/bin/env ruby

class MegaGreeter
    attr_accessor :names

    #créer l'objet
    def initialize(names = "World")
        @names = names
    end
    
    # saluer
    def say_hi
        if @names == nil # if param vide
            puts "..."
        elsif @names.respond_to?("each") # if liste
            @names.each do |name|
                puts "Hello #{name}!"
            end
        else #if not list
            puts "Hello #{@names}!"
        end
    end
    
    def say_bye
        if @names == nil
            puts "..."
        elsif @names.respond_to?("join")
            puts "Goodbye #{@names.join(", ")}. See you all soon !"
        else 
            puts "Goodbye #{@names}."
        end
    end
    
end


if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye 
    
    mg.names = "Zeke"
    mg.say_hi
    mg.say_bye 
    
    mg.names = ["Axel", "Nico", "Natago", "Dumbledore"]
    mg.say_hi
    mg.say_bye 
    
    mg.names = nil
    mg.say_hi
    mg.say_bye  
end