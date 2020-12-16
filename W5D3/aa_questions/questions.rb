require "sqlite3"
require_relative "questions_db.rb"
require_relative "user.rb"

class Question 
    attr_accessor :title, :body
    def initialize(hash)
        @id = hash['id']
        @title = hash['title']
        @body = hash['body']
        @author_id = hash['author_id']
    end

    def self.find_by_id(id)
        response = QuestionsDatabase.instance.execute(<<-SQL, id)
            SELECT
                *
            FROM
                questions
            WHERE
                id = ?
        SQL
        Question.new(response[0])
    end

    def self.find_by_author_id(author_id)
        response = QuestionsDatabase.instance.execute(<<-SQL, author_id)
            SELECT
                *
            FROM
                questions
            WHERE
                author_id = ?
        SQL
        Question.new(response[0])
    end

    def author
        response = QuestionsDatabase.instance.execute(<<-SQL, @author_id)
            SELECT
                *
            FROM
                users
            WHERE
                id = ?
        SQL
        User.new(response[0])
    end
end