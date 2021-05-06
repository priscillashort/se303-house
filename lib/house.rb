class House
    def initialize

    end
    
    def recite
        (1..12).collect { |i| line(i) }.join("\n")
    end

    def line(number)
        "This is #{phrase(number)}the house that Jack built.\n"
    end

    private

    def phrase(number)
        case number
        when 1
            ""
        when 2
            "the malt that lay in "
        when 3
            "the rat that ate #{phrase(number-1)}"
        when 4
            "the cat that killed #{phrase(number-1)}"
        when 5
            "the dog that worried #{phrase(number-1)}"
        when 6
            "the cow with the crumpled horn that tossed #{phrase(number-1)}"
        when 7
            "the maiden all forlorn that milked #{phrase(number-1)}"
        when 8
            "the man all tattered and torn that kissed #{phrase(number-1)}"
        when 9
            "the priest all shaven and shorn that married #{phrase(number-1)}"
        when 10
            "the rooster that crowed in the morn that woke #{phrase(number-1)}"
        when 11
            "the farmer sowing his corn that kept #{phrase(number-1)}"
        when 12
            "the horse and the hound and the horn that belonged to #{phrase(number-1)}"
        else
            ""
        end
    end
end