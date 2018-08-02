# h1
Takes some text and echoes it out centered on the screen, surrounded by padding characters. Useful for creating headers in script output.

Inspired by and based on [hr](https://github.com/LuRsT/hr).

## Installation
Install using [zplug](https://github.com/zplug/zplug) or some other plugin manager, or just source `h1.zsh` directly in your `.zshrc` file.

## Usage
`h1 header_text [padding_characters]`

- The first argument can be any string that you want uppercased and centered on the screen.
- The second argument is optional, and can be any character – or sequence of characters – that you want repeated before and after your header text as padding. Defaults to `-`.

## Examples
### Input 1
```
h1 "howdy partner"
```

### Output 1
```
------------------------------------------ HOWDY PARTNER ------------------------------------------
```

### Input 2
```
h1 "welcome" "+:"
```

### Output 2
```
+:+:+:+:+:+:+:+:+:+:+:+:+:+:+:+:+:+:+:+:+:+:+: WELCOME +:+:+:+:+:+:+:+:+:+:+:+:+:+:+:+:+:+:+:+:+:+:
```
