# `lazyvim-lolcrab` 💤 🦀
Add some color and excitement to your Neovim dashboard/startup screen! If you’ve come across any examples of full color, Neovim dashboard screens (a.k.a. ASCII art headers), and had any trouble figuring out how to accomplish that, this should help! My goal was to add the full color effects to the header art, but retain the center and footer from the standard Lazyvim installation. You can make additional changes to those sections if you prefer.

<img width="1321" height="1087" alt="lolcrab -s 0 01 -g warm dashboard-neovim-1.txt" src="https://github.com/user-attachments/assets/56e01634-7f0f-4d19-99af-7b517108a9ee" />

I’ve also included a few examples of Neovim ASCII  art, including the classic version by XXX. You can also make your own from scratch, or use an online ASCII art generator. 

**Note:** This does add some overhead to your Neovim startup, but I think it’s worth it :)

## Prerequisites:
1. A recent version of Lazyvim with the default dashboard enabled
2. [`lolcrab`](https://github.com/mazznoer/lolcrab), [`lolcat`](https://github.com/busyloop/lolcat), or something similar 
3. A text file with your ASCII art

## Quick start:
1. [Install `lolcrab`](https://github.com/mazznoer/lolcrab?tab=readme-ov-file#installation)
2. Copy the `nvim/lua/plugins` repo files into your `nvim/lua/plugins` folder
3. Quit and restart Neovim

## More detailed configuration instructions:
1. [Install `lolcrab`](https://github.com/mazznoer/lolcrab?tab=readme-ov-file#installation)
2. Copy `dashboard-nvim.lua` into your `nvim/lua/plugins` folder
3. Copy any of the included ASCII art `.txt` files to your desired location
4. Open `dashboard-nvim.lua` and set the following values:
    - `lolcrab_command` (for example “`lolcrab`” or “`lolcat`” or whatever executable you were using to process your ASCII art file)
    - `lolcrab_args` - check the docs for your executable of choice to pick the arguments you want to use. By default, it is set to "`-g warm -s 0.01`"
    - `header_ascii_file_path` - I chose to place the ASCII files in my `nvim/lua/plugins` folder, and this repo includes a few to get you started. Place your file(s) anywhere you want, and hardcode a direct path if you prefer
6. Optional:
    - Change the theme to “`hyper`” instead of “`doom`”
    - Modify the `center` section to your liking
    - Modify the `footer` section to your liking
7. Save your changes
8. Quit Neovim
9. Reopen Neovim and enjoy the beauty of your new creation!

## Screenshots

<img width="1321" height="1087" alt="lolcrab -s 0 01 -g cividis dashboard-neovim-1.txt" src="https://github.com/user-attachments/assets/7950f40e-a8d0-4a8b-8d3f-cc9b57e0ea17" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g cool dashboard-neovim-1.txt" src="https://github.com/user-attachments/assets/3be24736-ba0a-4735-9289-27dafdcc4630" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g cubehelix dashboard-neovim-1.txt" src="https://github.com/user-attachments/assets/7f3b2e5c-d25f-4b2d-97be-08bb022fda57" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g fruits dashboard-neovim-1.txt" src="https://github.com/user-attachments/assets/a3c9a499-3cc6-4611-9a19-c3ce6eb71b45" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g inferno dashboard-neovim-1.txt" src="https://github.com/user-attachments/assets/d83a6ee9-33e7-4e67-be73-99bf009c94b9" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g lolcat dashboard-neovim-1.txt" src="https://github.com/user-attachments/assets/ee21b86c-a603-4637-95ea-496ec31dcfdb" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g magma dashboard-neovim-1.txt" src="https://github.com/user-attachments/assets/19ab66c6-d54b-4cd4-b026-d2c2bf81d279" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g plasma dashboard-neovim-1.txt" src="https://github.com/user-attachments/assets/0eda4cb3-e8d7-4ae6-b42f-07b414314767" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g rainbox dashboard-neovim-1.txt" src="https://github.com/user-attachments/assets/a4502dd6-9bb5-45ec-b2d9-93c8a1afe915" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g rd-yl-gn dashboard-neovim-1.txt" src="https://github.com/user-attachments/assets/707a9e38-ee5b-4b48-b66e-a1a6c04bf360" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g sinebow dashboard-neovim-1.txt" src="https://github.com/user-attachments/assets/4d0063ba-2090-4c23-b4ea-99ddd497b0db" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g spectral dashboard-neovim-1.txt" src="https://github.com/user-attachments/assets/6b73e125-0d8d-4fb9-a17b-a8fce62aab02" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g turbo dashboard-neovim-1.txt" src="https://github.com/user-attachments/assets/c7d77699-bfb8-4910-a8b9-30ccefb801f9" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g viridis dashboard-neovim-1.txt" src="https://github.com/user-attachments/assets/592b8e42-dd60-4b39-8489-82e43eda5c44" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g warm dashboard-neovim-1.txt" src="https://github.com/user-attachments/assets/56e01634-7f0f-4d19-99af-7b517108a9ee" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g warm dashboard-neovim-0.txt" src="https://github.com/user-attachments/assets/48994a41-1a48-4a29-b37d-779d5b23994b" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g warm dashboard-neovim-2.txt" src="https://github.com/user-attachments/assets/7438da4e-e61a-457c-afbd-a74600a2a88e" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g warm dashboard-neovim-3.txt" src="https://github.com/user-attachments/assets/3a87e196-6f80-4638-ba72-3d0627b64f2b" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g warm dashboard-neovim-4.txt" src="https://github.com/user-attachments/assets/5d1000dd-ec17-4717-82d9-11863f9e0a6c" />
<img width="1321" height="1087" alt="lolcrab -s 0 01 -g warm dashboard-neovim-5.txt" src="https://github.com/user-attachments/assets/f3b563d0-c54b-4977-a7ed-f9de5e6b6f1c" />

## Acknowledgements, etc.
- https://github.com/LazyVim/LazyVim
- https://github.com/nvimdev/dashboard-nvim
- https://www.lazyvim.org/extras/ui/dashboard-nvim
- https://github.com/mazznoer/lolcrab
- https://github.com/busyloop/lolcat
- Thanks to AAA for the most amazing NeoVim ASCII art!
- Thanks to XXX, YYY, and ZZZ for providing a starting point!

## Contributing:
If you have any suggestions or improvements, please open a pull request with as much detail as possible. 
