songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs) 
  songs.each_with_index {|song, index|
    puts "#{index+1}. #{song}"
  }
end

def play(songs)
  valid_input = [#{index+1}, #{song}]
  
  puts "Please enter a song name or number:"
  user_response = gets.strip
  
    if user_response == valid_input
      puts "Playing #{song}"
    else 
      puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  puts "Please enter a command:"
  user_command = gets.strip
  
  if user_command == "exit"
    exit_jukebox
  if user_command == "list"
    list
    
  elsif user_command == "play"
    play
    
  elsif user_command == "help"
    help
  
  else user_command == "exit"
    exit_jukebox
  end
  user_command
end
