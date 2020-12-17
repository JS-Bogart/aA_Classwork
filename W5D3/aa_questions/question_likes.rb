require 'sqlite3'
require_relative 'questions_db.rb'

class QuestionLike
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
                question_likes
            WHERE
                id = ?
        SQL
        QuestionLike.new(response[0])
    end

end