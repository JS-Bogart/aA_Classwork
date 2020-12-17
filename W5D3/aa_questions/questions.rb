require "sqlite3"
require_relative "questions_db.rb"
require_relative "users.rb"
require_relative "replies.rb"
require_relative "question_follows.rb"

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
        # Question.new(response[0])
        response.map { |data| Question.new(data) }
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

    def replies
        Reply.find_by_question_id(@id)
    end

    def followers
        QuestionFollow.followers_for_question_id(@id)
    end
end