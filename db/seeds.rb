# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Practice Question///////////////////////////////////////////////

pq1=PracticeQuestion.create!(title:"Practice Question 1",question_text: "This is Practice Question 1", hint_text: "This is your hint for question 1")
pq2=PracticeQuestion.create(title:"Practice Question 2",question_text: "This is Practice Question 2", hint_text: "This is your hint for question 2")
pq3=PracticeQuestion.create(title:"Practice Question 3",question_text: "This is Practice Question 3", hint_text: "This is your hint for question 3")
pq4=PracticeQuestion.create(title:"Practice Question 4",question_text: "This is Practice Question 4", hint_text: "This is your hint for question 4")
pq5=PracticeQuestion.create(title:"Practice Question 5",question_text: "This is Practice Question 5", hint_text: "This is your hint for question 5")
pq6=PracticeQuestion.create(title:"Practice Question 6",question_text: "This is Practice Question 6", hint_text: "This is your hint for question 6")
pq7=PracticeQuestion.create(title:"Practice Question 7",question_text: "This is Practice Question 7", hint_text: "This is your hint for question 7")
pq8=PracticeQuestion.create(title:"Practice Question 8",question_text: "This is Practice Question 8", hint_text: "This is your hint for question 8")
pq9=PracticeQuestion.create(title:"Practice Question 9",question_text: "This is Practice Question 9", hint_text: "This is your hint for question 9")
pq10=PracticeQuestion.create(title:"Practice Question 10",question_text: "This is Practice Question 10", hint_text: "This is your hint for question 10")


# ///////////////////////////////////////////////////////////////
# Exam Question///////////////////////////////////////////////

eq1=ExamQuestion.create!(title:"Exam Question 1",question_text: "This is Exam Question 1" ,explanation_text: "This is an Explanation for Question 1")
eq2=ExamQuestion.create(title:"Exam Question 2",question_text: "This is Exam Question 2" ,explanation_text: "This is an Explanation for Question 2")
eq3=ExamQuestion.create(title:"Exam Question 3",question_text: "This is Exam Question 3" ,explanation_text: "This is an Explanation for Question 3")
eq4=ExamQuestion.create(title:"Exam Question 4",question_text: "This is Exam Question 4" ,explanation_text: "This is an Explanation for Question 4")
eq5=ExamQuestion.create(title:"Exam Question 5",question_text: "This is Exam Question 5" ,explanation_text: "This is an Explanation for Question 5")
eq6=ExamQuestion.create(title:"Exam Question 6",question_text: "This is Exam Question 6" ,explanation_text: "This is an Explanation for Question 6")
eq7=ExamQuestion.create(title:"Exam Question 7",question_text: "This is Exam Question 7" ,explanation_text: "This is an Explanation for Question 7")
eq8=ExamQuestion.create(title:"Exam Question 8",question_text: "This is Exam Question 8" ,explanation_text: "This is an Explanation for Question 8")
eq9=ExamQuestion.create(title:"Exam Question 9",question_text: "This is Exam Question 9" ,explanation_text: "This is an Explanation for Question 9")
eq10=ExamQuestion.create(title:"Exam Question 10",question_text: "This is Exam Question 10" ,explanation_text: "This is an Explanation for Question 10")

# ///////////////////////////////////////////////////////////////
# Test Paper///////////////////////////////////////////////
 t1=Test.create!(name: "Paper 1", for_practice:true)

# ///////////////////////////////////////////////////////////
