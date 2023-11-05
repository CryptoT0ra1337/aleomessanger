// The 'helloworld' program.
program helloworld.aleo {

    record Hello {
        owner: address,
        text: field,
    }

    mapping hello_messages: address => Hello;

    transition say_hello(public some_text: field) -> Hello {
        let hello: Hello = {
            ownerr: self.caller,
            text: 
        };
        return hello then finalize(self.caller, some_text);
    }

    finalize say_hello(caller: address, some_text: field) {
        hello_messages.set(caller, some_text);
    }
}