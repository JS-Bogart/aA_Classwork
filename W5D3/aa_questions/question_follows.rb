require "sqlite3"
require_relative "questions_db.rb"
require_relative "user.rb"
require_relative "questions.rb"

class QuestionFollow
    attr_reader :id, :user_id, :question_id
    def initialize(hash)
        @id = hash['id']
        @user_id = hash['user_id']
        @question_id = hash['question_id']
    end

    def self.find_by_id(id)
        response = QuestionsDatabase.instance.execute(<<-SQL, id)
            SELECT
                *
            FROM
                question_follows
            WHERE
                id = ?
        SQL
        QuestionFollow.new(response[0])
    end
end