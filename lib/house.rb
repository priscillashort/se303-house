class House
    attr_reader :prefix
    
    def initialize(prefix = "This is ")
        @prefix = prefix
        @subjects = [
            'the horse and the hound and the horn',
            'the farmer sowing his corn',
            'the rooster that crowed in the morn',
            'the priest all shaven and shorn',
            'the man all tattered and torn',
            'the maiden all forlorn',
            'the cow with the crumpled horn',
            'the dog',
            'the cat',
            'the rat',
            'the malt'
        ]
        @verbs = [
            ' that belonged to',
            ' that kept',
            ' that woke',
            ' that married',
            ' that kissed',
            ' that milked',
            ' that tossed',
            ' that worried',
            ' that killed',
            ' that ate',
            ' that lay in'
        ]
        @pieces_array = @subjects.zip(@verbs)
    end

    def recite
        (1..pieces.length).collect { |i| line(i) }.join("\n")
    end

    def line(number)
        "#{prefix}#{pieces.last(number).join(' ')}.\n"
    end

    private

    def pieces
        @pieces_array.map{|subs, vrbs| "#{subs}#{vrbs}"}
            .append('the house that Jack built')
    end

end

class RandomHouse < House
    def initialize(prefix = "This is ")
        super(prefix)
        @subjects = @subjects.sort_by { rand }
        @verbs = @verbs.sort_by { rand }
        @pieces_array = @subjects.zip(@verbs)
    end
end