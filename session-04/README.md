# Loops and Lists

### Loop: Repeating yourself without copy/paste

```
int x = 0;
while (x < width) {
  point(x, height / 2);
  x = x + 10;
}
```

### List: Manage many things at the same time

```

// CREATE and FILL
FloatList xs = new FloatList();
int x = 0;
while (x < width) {
  xs.append(random(width));
  x = x + 10;
}


// USE
for (float x : xs) {
  // ...
}

// OR

for (int i=0; i < xs.size(); i++) {
  float x = xs.get(i);
  // ...
}


```

## Demonstrations

- Loops with `while`
- Loops with `for` (shortcuts!)

- lists
- lists with `FloatList` and friends
- lists + loops = ❤️


## Exercises

Using our new knowledge of Loops and Lists, we are going to build two new sketches.

The first is a simple nature simulation, we're creating rain!

The second is a combination of motion and connection, we're making a mobile web.
