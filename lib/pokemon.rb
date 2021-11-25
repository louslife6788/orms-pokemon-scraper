class Pokemon
    attr_accessor :id, :name, :type, :db

    @@all = []

    def initialize(id:, name:, type:, db:)
        @id = id 
        @name = name
        @type = type
        @db = db 
        @@all << self
    end

    def self.all
        @@all
    end

    def self.save(name, type, db)
        sql = "INSERT INTO pokemon (name, type) VALUES (?, ?)"
        db.execute(sql, name, type)
    end
    
    def self.find(id_num, db)
        sql =  "SELECT * FROM pokemon WHERE id=?"
        db.execute(sql, id_num).map do |row|
            Pokemon.new(id: row[0], name: row[1], type: row[2], db: db)
        end.first
    end
    
end




