require "sqlite3"
require_relative "questions_db.rb"
require_relative "users.rb"
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

    def self.followers_for_question_id(question_id)
        response = QuestionsDatabase.instance.execute(<<-SQL, question_id)
            SELECT
                users.id, users.fname, users.lname
            FROM
                question_follows
            JOIN
                users ON users.id = question_follows.user_id
            JOIN
                questions ON questions.id = question_follows.question_id
            WHERE
                questions.id = ?
        SQL
        response.map { |data| User.new(data) }
    end

    def self.followed_questions_for_user_id(user_id)
        response = QuestionsDatabase.instance.execute(<<-SQL, user_id)
            SELECT DISTINCT
                questions.id, questions.title, questions.body, questions.author_id
            FROM
                question_follows
            JOIN
                users ON users.id = question_follows.user_id
            JOIN
                questions ON questions.id = question_follows.question_id
            WHERE
                users.id = ?
        SQL
        response.map { |data| Question.new(data) }
    end

    def self.most_followed_questions(n)
        response = QuestionsDatabase.instance.execute(<<-SQL, n)
            SELECT
                questions.id, questions.title, questions.body, questions.author_id
            FROM
                question_follows
            JOIN
                users ON users.id = question_follows.user_id
            JOIN
                questions ON questions.id = question_follows.question_id
            WHERE
                
        SQL
    end
end