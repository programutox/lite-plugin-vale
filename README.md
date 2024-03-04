# lite-plugin-vale

A Lite and Lite-XL plugin providing syntax highlighting for the [Vale](https://vale.dev/) programming language.

![Screenshot of vale file showing syntax highlighting](example.png)

*This piece of code comes from Vale's [arrays implementation](https://github.com/ValeLang/Vale/blob/master/stdlib/src/arrays/arrays.vale).*

## Installation

Simply add the [language_vale.lua](language_vale.lua) file to the `plugins` directory (on Linux it is `~/.config/lite-xl/plugins`) and restart the editor.

## Why I made this

I wanted to try out Vale, but the VSCode extension was outdated (it was old keywords). 
Also, I was looking for another code editor, and found Lite-XL.
Aside from finding correct Lua patterns (which differs a bit from regex), coding a plugin for this editor is simple and accessible.

## Helpful websites

- Lite-XL [tutorial](https://lite-xl.com/en/tutorials/syntax-highlighting) for syntax highlighting.
- [Lua patterns](https://gitspartv.github.io/lua-patterns/) to check what you pattern does and look for errors.

