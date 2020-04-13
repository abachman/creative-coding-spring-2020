# Converting a sketch from Processing (java) to p5.js

1. Convert all types to "let"
  - like `int`, `float`, `color`
1. Arrays in javascript don't have a type. `int x[];` becomes `let x = []`
1. Convert "void" to "function"
1. Convert "size()" to "createCanvas()"
1. Put "color()" inside setup()
