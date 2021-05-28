class House
    attr_reader :prefix
    
    def initialize(prefix = "This is ")
        @prefix = prefix
        @pieces_array = [
            ['the horse and the hound and the horn', ' that belonged to'],
            ['the farmer sowing his corn', ' that kept'],
            ['the rooster that crowed in the morn', ' that woke'],
            ['the priest all shaven and shorn', ' that married'],
            ['the man all tattered and torn', ' that kissed'],
            ['the maiden all forlorn', ' that milked'],
            ['the cow with the crumpled horn', ' that tossed'],
            ['the dog', ' that worried'],
            ['the cat', ' that killed'],
            ['the rat',' that ate'],
            ['the malt', ' that lay in']
        ]
        @pieces_array = @pieces_array.collect(&:first)
            .zip(@pieces_array.collect(&:last))
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
        @pieces_array = @pieces_array.collect(&:first).sort_by { rand }
            .zip(@pieces_array.collect(&:last).sort_by { rand })
    end
end