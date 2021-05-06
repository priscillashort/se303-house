class House
    def initialize

    end
    
    def recite
        (1..12).collect { |i| line(i) }.join("\n")
    end

    def line(number)
        case number
        when 8
            "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 9
            "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 10
            "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 11
            "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 12
            "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        else
            "This is #{phrase(number)}the house that Jack built.\n"
        end
    end

    def phrase(number)
        case number
        when 2
            "the malt that lay in "
        when 3
            "the rat that ate #{phrase(2)}"
        when 4
            "the cat that killed #{phrase(3)}"
        when 5
            "the dog that worried #{phrase(4)}"
        when 6
            "the cow with the crumpled horn that tossed #{phrase(5)}"
        when 7
            "the maiden all forlorn that milked #{phrase(6)}"
        else
            ""
        end
    end
end