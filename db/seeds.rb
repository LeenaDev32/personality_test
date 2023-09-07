# Clear existing data
UserResponse.destroy_all
Answer.destroy_all
Question.destroy_all

# Create Questions and Answers
questions_and_answers = [
  {
    question_text: 'How do you feel in large social gatherings?',
    answers: [
      { text: 'Comfortable', category: 'Extrovert' },
      { text: 'Uncomfortable', category: 'Introvert' },
      { text: 'Neutral', category: 'Introvert' },
      { text: 'Depends on the situation', category: 'Introvert' }
    ]
  },
  {
    question_text: 'Do you prefer spending time alone or with others?',
    answers: [
      { text: 'Alone', category: 'Introvert' },
      { text: 'With others', category: 'Extrovert' },
      { text: 'Sometimes alone, sometimes with others', category: 'Introvert' },
      { text: 'Depends on my mood', category: 'Introvert' }
    ]
  },
  {
    question_text: 'How do you handle social events?',
    answers: [
      { text: 'I love attending them', category: 'Extrovert' },
      { text: 'I attend them but prefer smaller gatherings', category: 'Introvert' },
      { text: 'I avoid them as much as possible', category: 'Introvert' },
      { text: 'I attend them but feel anxious', category: 'Introvert' }
    ]
  },
  {
    question_text: "What's your preferred weekend activity?",
    answers: [
      { text: 'Going to parties and events', category: 'Extrovert' },
      { text: 'Reading a book or watching movies at home', category: 'Introvert' },
      { text: 'Hiking or outdoor activities', category: 'Extrovert' },
      { text: 'Meeting a few close friends for dinner', category: 'Introvert' }
    ]
  },
  {
    question_text: 'How do you recharge after a busy day?',
    answers: [
      { text: 'Socializing with friends or family', category: 'Extrovert' },
      { text: 'Spending quiet time alone', category: 'Introvert' },
      { text: 'Exercising or going to the gym', category: 'Extrovert' },
      { text: 'Listening to music or meditating', category: 'Introvert' }
    ]
  }
]

questions_and_answers.each do |qa|
  question = Question.create(text: qa[:question_text])

  qa[:answers].each do |answer|
    Answer.create(text: answer[:text], category: answer[:category], question: question)
  end
end

