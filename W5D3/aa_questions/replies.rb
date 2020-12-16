require "sqlite3"
require_relative "questions_db.rb"
require_relative "user.rb"
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
end