# Lottery DApp

Welcome to the Lottery DApp, a simple decentralized application (DApp) built on the Aleo blockchain platform. This README.md will provide you with an overview of the project and a brief journey of what I've learned while working on it as a newbie developer.

## About the Project

The 'lottery' program is a basic smart contract written in Aleo, designed to facilitate a simple lottery game. In this DApp, participants can send a message along with their entry into the lottery. The Aleo platform's privacy-focused features make it a secure and transparent way to conduct such a game.

## Code Overview

### Smart Contract Structure

The code defines a program with the name 'helloworld.aleo' and consists of the following main components:

- `record Hello`: A custom data structure that represents a message entry. It contains the owner's address and a 'text' field.

- `mapping hello_messages`: A mapping that associates an address with the corresponding 'Hello' message.

### Lottery Logic

The key logic of the DApp is in the `say_hello` transition and the `finalize` function. Here's a brief overview:

#### Transition `say_hello`

- **Parameters**: It takes a `public some_text` field, which represents the message to be submitted to the lottery.

- **Logic**: The transition creates a `Hello` record, assigns the sender's address as the owner, and sets the 'text' field as the provided message.

- **Return Value**: It returns the created 'Hello' record.

#### Function `finalize`

- **Parameters**: It takes `caller` (the address of the caller) and `some_text` (the message from the caller).

- **Logic**: This function is called after the 'say_hello' transition and sets the 'some_text' message for the caller in the 'hello_messages' mapping.

## What I've Learned

While working on this project, I, as a newbie developer, have learned the basics of writing a smart contract in Aleo. I've gained insights into:

- Creating custom data structures using `record`.
- Using mappings to store and retrieve data.
- Defining transitions to handle user interactions.
- Writing a finalize function to perform actions after a transition.
- The importance of correctly naming variables and fields to avoid typos and bugs in the code.

I hope this DApp and my learning journey can serve as a useful starting point for others who are new to developing on the Aleo blockchain. Feel free to explore and build upon this project for more complex applications.

Happy coding! 🚀