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
        when 0
            ""
        when 8
            "#{pieces[number-1]}#{phrase(number-1)}"
        when 9
            "the priest all shaven and shorn that married #{phrase(number-1)}"
        when 10
            "the rooster that crowed in the morn that woke #{phrase(number-1)}"
        when 11
            "the farmer sowing his corn that kept #{phrase(number-1)}"
        when 12
            "the horse and the hound and the horn that belonged to #{phrase(number-1)}"
        else
            "#{pieces[number-1]}#{phrase(number-1)}"
        end
    end

    def pieces
        [
            '',
            'the malt that lay in ',
            'the rat that ate ',
            'the cat that killed ',
            'the dog that worried ',
            'the cow with the crumpled horn that tossed ',
            'the maiden all forlorn that milked ',
            'the man all tattered and torn that kissed '
        ]
    end
end