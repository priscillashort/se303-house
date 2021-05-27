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
        zip_pieces.append('the house that Jack built')
    end

    def zip_pieces
        subjects.map.with_index { |_, idx| ["the #{subjects[idx]} that #{verbs[idx]}"] }
    end

    def subjects
        [
            'horse and the hound and the horn',
            'farmer sowing his corn',
            'rooster that crowed in the morn',
            'priest all shaven and shorn',
            'man all tattered and torn',
            'maiden all forlorn',
            'cow with the crumpled horn',
            'dog',
            'cat',
            'rat',
            'malt'
        ]
    end

    def verbs
        [
            'belonged to',
            'kept',
            'woke',
            'married',
            'kissed',
            'milked',
            'tossed',
            'worried',
            'killed',
            'ate',
            'lay in'
        ]
    end
end

class RandomHouse < House
    private

    def subjects
        if @rand_subjects == nil
            @rand_subjects = super.sort_by { rand }
        end

        @rand_subjects
    end

    def verbs
        if @rand_verbs == nil
            @rand_verbs = super.sort_by { rand }
        end

        @rand_verbs
    end
end