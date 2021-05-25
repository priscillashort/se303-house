class House
    attr_reader :prefix
    
    def initialize(prefix = "This is ")
        @prefix = prefix
    end

    def recite
        (1..pieces.length).collect { |i| line(i) }.join("\n")
    end

    def line(number)
        "#{prefix}#{pieces.last(number).join(' ')}.\n"
    end

    private

    def pieces
        [
            'the horse and the hound and the horn that belonged to',
            'the farmer sowing his corn that kept',
            'the rooster that crowed in the morn that woke',
            'the priest all shaven and shorn that married',
            'the man all tattered and torn that kissed',
            'the maiden all forlorn that milked',
            'the cow with the crumpled horn that tossed',
            'the dog that worried',
            'the cat that killed',
            'the rat that ate',
            'the malt that lay in',
            'the house that Jack built'
        ]
    end
end

class RandomHouse < House
    def pieces
        rand_pieces = super
        rand_pieces[0..rand_pieces.length-2].sort_by { rand }.append rand_pieces[rand_pieces.length-1]
    end
end