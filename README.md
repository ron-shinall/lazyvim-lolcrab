# `lazyvim-lolcrab` 💤🦀
Add some color and excitement to your Neovim dashboard/startup screen! If you’ve come across any examples of full color, Neovim dashboard screens (a.k.a. ASCII art headers), and had any trouble figuring out how to accomplish that, this should help! My goal was to add the full color effects to the header art, but retain the center and footer from the standard Lazyvim installation. You can make additional changes to those sections if you prefer. 

I’ve also included a few examples of Neovim ASCII  art, including the classic version by XXX. You can also make your own from scratch, or use an online ASCII art generator. 

**Note:** This does add some overhead to your Neovim startup, but I think it’s worth it :)

## Prerequisites:
1. A recent version of Lazyvim with the default dashboard enabled
2. `lolcrab`, `lolcat`, or something similar 
3. A text file with your ASCII art

## Quick start:
1. [Install `lolcrab`](https://github.com/mazznoer/lolcrab?tab=readme-ov-file#installation)
2. Copy all of the repo files into your `nvim/lua/plugins` folder
3. Quit and restart Neovim

## More detailed configuration instructions:
1. Copy `dashboard -nvim.lua` into your `nvim/lua/plugins` folder
2. Open that file and set the following values:
  a. `lolcrab_command` (for example “lolcrab” or “lolcat” or whatever executable you were using to process your ASCII art file)
  b. `lolcrab_args` - check the docs for your executable of choice to pick the arguments you want to use. By default, it is set to "-g warm -s 0.01"
  c. `header_ascii_file_path` - I chose to place the ASCII files in my nvim/lua/plugins folder, and this repo includes a few to get you started. Place your file(s) anywhere you want, and hardcode a direct path if you prefer
3. Optional:
  a. Change the theme to “hyper” instead of “doom”
  b. Modify the center section to your liking
  c. Modify the footer section to your liking
4. Save your changes
5. Quit Neovim
6. Reopen Neovim and enjoy the beauty of your new creation!

Thanks to XXX, YYY, and ZZZ for providing a starting point!

## Contributing:
If you have any suggestions or improvements, please open a pull request with as much detail as possible. 
