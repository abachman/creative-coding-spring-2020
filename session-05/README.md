# Functions and Objects

Like verbs and nouns living together in separate sentences, functions and classes are about data and code, living together in **separated**, **reusable** containers.

This session we'll be starting to play with some more of the classes and functions built into Processing. Specifically images, pixels, and the PGraphics class.

TODO:
- come up with modifications of the sketches from last week so we get very different visual output. 
- come up with a sketch idea that explores new territory.
- Prepare to speak on the project: generating ideas, generating questions, getting assistance.
- Prepare a slide on "Buy a CircuitPlayground Express and a micro USB cable **NOW**"



## Why this?

We want to keep our sketches _clean_ so that when we come back to them, we know how to make changes. 

Two important ways we can keep our code clean and our ideas manageable are by giving everything names that make sense and **by separating our code into reusable pieces**.

Writing clean code for its own sake is **not** our goal. Some good reasons to know how these tools (functions and classes) work are: 

- This is how every library in Processing is built. Even if you never write your own classes or functions, you will be using someone else's.
- Building sketches that are easy to change means you can explore faster, with less stress. Keeping separate pieces of our code _actually_ separate means we can tweak, add, remove, or replace big pieces of our projects without breaking them.
- Isolating code and data that works together into its own functions and classes means you can reuse it in future projects. Instead of copying big chunks of lines that are intermingled with your other code, you can copy over a whole class or function and add a single line of code to use it.



## Modelling the world in Code and Data

Processing knows almost nothing about the world or ideas. It makes some guesses at what *kinds* of things we will need in order to talk about our idea--numbers, words, lines, colors, shapes--but it doesn't know how to put them all together, that's on us.

The ideas we can come up with about what we would like to see or how we would like something to work can be described a lot of different ways in code. Part of the journey of writing code to describe our ideas is feeling out a solution that both works and makes sense to us. Tools like `functions` and `classes` can make learning code more difficult even though they are designed to make writing and sharing code easier. 

Maybe the most important thing functions and classes will do for our projects is put tight boundaries around pieces of our project that don't need to know about each other. If the code doesn't need to know or remember how this other thing works, then neither do we! We can break up our programs into progressively smaller programs.

A class is a tiny container for ideas that lets us stop remembering early, so that we can think freely about the other pieces of our project.

