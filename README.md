# Terminal_GPT

Terminal_GPT is an interactive chatbot that uses OpenAI's ChatGPT model. It allows you to have conversations with the model right from your terminal.

## Prerequisites
- Python 3.x
- OpenAI Python library
- OpenAI API key

## Installation
1. Clone the repository:

```git clone https://github.com/AkshatNaruka/Terminal_GPT.git```

```cd terminal-gpt```

2. Install the dependencies:

```pip install openai```

## Usage
1. Add your OpenAI API key:
- Sign up or log in to the OpenAI platform: https://platform.openai.com/
- Create a new API key.
- Open the `terminal_gpt.sh` file in a text editor.
- Replace the `Your_API_Key` placeholder with your actual API key.

2. Run the script:
```./terminal_gpt.sh```

3. Start the conversation:
- The chatbot will welcome you and prompt you to enter your message.
- Type your message and press Enter to send it.
- The chatbot will respond with a generated message.
- Keep the conversation going by entering more messages.

4. Exiting the conversation:
- To end the conversation, simply type `exit` and press Enter.
- The chatbot will bid you goodbye, and the script will terminate.

## Customization
- Adjusting response length: In the `terminal_gpt.sh` script, you can modify the `max_tokens` parameter to control the length of the generated responses.
- Changing response randomness: You can adjust the `temperature` parameter in the script to control the randomness of the responses.

## Contributing
Contributions are welcome! If you have any ideas, improvements, or bug fixes, please submit a pull request.

## License
This project is licensed under the [MIT License](LICENSE).



