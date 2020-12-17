require "sqlite3"
require_relative "questions_db.rb"
require_relative "users.rb"
require_relative "questions.rb"

class Reply
    attr_accessor :body
    attr_reader :id, :parent_id, :author_id, :question_id
    def initialize(hash)
        @id = hash['id']
        @parent_id = hash['parent_id']
        @author_id = hash['author_id']
        @question_id = hash['question_id']
        @body = hash['body']
    end

    def self.find_by_id(id)
        response = QuestionsDatabase.instance.execute(<<-SQL, id)
            SELECT
                *
            FROM
                replies
            WHERE
                id = ?
        SQL
        Reply.new(response[0])
    end

    def self.find_by_user_id(user_id)
        response = QuestionsDatabase.instance.execute(<<-SQL, user_id)
            SELECT
                *
            FROM
                replies
            WHERE
                user_id = ?
        SQL
        Reply.new(response[0])
    end

    def self.find_by_question_id(question_id)
        response = QuestionsDatabase.instance.execute(<<-SQL, question_id)
            SELECT
                *
            FROM
                replies
            WHERE
                question_id = ?
        SQL
        Reply.new(response[0])
    end
end