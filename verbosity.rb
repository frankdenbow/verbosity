require 'sinatra'
require 'json'

get '/' do
  erb :index

  #Take Text Input From User


  # Loop through input, delimeter is " " "," ""-" is there a list of common delimeters to extract words?
    # Create a set containing all words - WORDS
    # Create frequency array with a count of how many times the words appear - COUNT

  # Loop through WORDS
    # Lookup in websters dictionary, count # of definitions
    # Lookup in urban dictionary, count # of definitions
    # Analyze the word for
      # Length
      # Uniqueness (number of synonyms, if it exists in a dictionary)
      # type (emoji, contraction, pronoun etc)
    # Lookup in google trends to see average usage in modern times

  # Create a score based on previous analysis
end

post '/check_verbosity' do
  params = request.env["rack.input"].read
  number_of_words = params.split(" ").length
  number_of_characters = params.split(" ").join("").length
  verbosity_score = number_of_words * number_of_characters
  response = verbosity_score > 300 ? "Ridiculous" : verbosity_score
  return response
end

run Sinatra::Application.run!
