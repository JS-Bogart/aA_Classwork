require 'sqlite3'
require_relative 'questions_db.rb'
require_relative 'questions.rb'

class User
    attr_accessor :fname, :lname
    
    def initialize(hash)
        @id = hash['id']
        @fname = hash['fname']
        @lname = hash['lname']
    end

    def self.find_by_id(id)
        response = QuestionsDatabase.instance.execute(<<-SQL, id)
            SELECT
                *
            FROM
                users
            WHERE
                id = ?
        SQL
        User.new(response[0])
    end

    def self.find_by_name(fname, lname)
        response = QuestionsDatabase.instance.execute(<<-SQL, fname, lname)
            SELECT
                *
            FROM   
                users
            WHERE
                fname LIKE ? AND lname LIKE ?
        SQL
        response.map { |data| User.new(data) }
    end

    def authored_questions
        Question.find_by_author_id(@id)
    end

    def authored_replies
        Reply.find_by_user_id(@id)
    end

end