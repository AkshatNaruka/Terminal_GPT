import openai

# Set up your OpenAI API credentials
openai.api_key = "Your_API_Key"

# Define a function to interact with the ChatGPT model
def chat_with_gpt(prompt):
    response = openai.Completion.create(
        engine="text-davinci-003",  # Choose the ChatGPT model
        prompt=prompt,
        max_tokens=50,  # Adjust the response length as desired
        n=1,  # Number of responses to generate
        stop=None,  # Stop generating responses after this token
        temperature=0.7,  # Adjust the randomness of the responses
    )

    # Get the first generated response
    reply = response.choices[0].text.strip()
    return reply

# Start the conversation with ChatGPT
print("Welcome to Terminal_GPT!")
print("Type 'exit' to end the conversation.")

# Loop to continue the conversation
while True:
    user_input = input("You: ")

    if user_input.lower() == "exit":
        print("Goodbye!")
        break

    # Generate a response from ChatGPT
    reply = chat_with_gpt(user_input)

    print("ChatGPT:", reply)
