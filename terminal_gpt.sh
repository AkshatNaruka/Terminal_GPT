#!/bin/bash

#Set up your OpenAI API credentials
API_KEY="Your_Api_Key"

#Define a Function to interact with ChatGPT Model
chat_with_gpt(){
	response=$(curl -X POST -H "Content-Type: application/json" \
		-H "Authorization: Bearer $API_KEY" \
		-d '{
			"model": "text-davinci-003",
			"prompt": "'"$1"'",
			"max_tokens": 50,
			"n": 1,
			"temperature": 0.7
		}' \
		https://api.openai.com/v1/engines/davinci-codex/completions)

	#Extract the generated response
	reply=$(echo "$response" | jq -r '.choices[0].text' | xargs)
	echo "$reply"
}

#Start the conversation with chatGPT 
echo "Welcome to Terminal_GPT"
echo "Type 'exit' to end the conversation."

#Loop to continue the conversation
while true; do
	read -p "You: " user_input
	
	if [[ $user_input == "exit" ]]; then 
	    echo "GoodBye!"
	    break
	fi

	#Generate a response from ChatGPT
	reply=$(chat_with_gpt "$user_input")
	
	echo "ChatGPT: $reply"
done

