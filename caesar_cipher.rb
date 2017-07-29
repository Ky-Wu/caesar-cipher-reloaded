require 'sinatra'
require 'sinatra/reloader'

def caesar_cipher(original_message, shift = 0)
  shift = shift % 26
  letters = original_message.split("")
  letters.map! do |letter|
  #checks if the character is a letter
    if (97..122) === letter.ord or (65..90) === letter.ord
      new_order = letter.ord + shift
      if new_order > 122 and new_order < 140
        letter = (new_order - 26).chr
      elsif new_order > 90 and new_order < 97
        letter = (new_order - 26).chr
      else
        letter = new_order.chr
      end
    else #letter will be ignored without this statement
      letter
    end
  end
  letters.join("")
end

get '/' do
  
end
