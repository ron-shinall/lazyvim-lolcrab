return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		-- *********************************************************************************************
		-- Provide the lolcrab command you want to use...lolcrab, lolcat, etc.
		-- *********************************************************************************************
		local lolcrab_command = "lolcrab"
		local lolcrab_args = "-g warm -s 0.01"
		-- *********************************************************************************************
		-- Provide the path to your ascii art file...can also be a direct path "/path/to/file.txt"
		-- *********************************************************************************************
		local header_ascii_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dashboard-neovim-1.txt"
		-- *********************************************************************************************

		local header_file_readable = vim.fn.filereadable(header_ascii_file_path) == 1
		local lolcrab = vim.fn.executable(lolcrab_command) == 1
		local preview_opts = {}

		if lolcrab and header_file_readable then
			-- only count utf-8 characters since #line is unreliable with certain encoded characters
			local function utf8_char_count(str)
				local count = 0
				for _ in str:gmatch("[^\128-\191][\128-\191]*") do
					count = count + 1
				end
				return count
			end

			local file_lines = vim.fn.readfile(header_ascii_file_path)
			local max_line_width = 0
			for _, line in ipairs(file_lines) do
				max_line_width = math.max(max_line_width, utf8_char_count(line))
			end

			preview_opts = {
				command = lolcrab_command .. " " .. lolcrab_args,
				file_path = header_ascii_file_path,
				file_width = max_line_width,
				file_height = #file_lines,
			}
		end

		local default_logo = [[
         ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗      Z
         ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║    Z  
         ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║  z    
         ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ z     
         ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║       
         ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝       
                                                                  
          Uh oh...could not render header using lolcrab :(        
    ]]

		local opts = {
			theme = "doom",
			hide = {
				statusline = false,
			},
			preview = preview_opts,
			config = {
				header = vim.split(string.rep("\n", 8) .. default_logo .. "\n", "\n"),

				-- default config from https://www.lazyvim.org/extras/ui/dashboard-nvim
				center = {
					{
						action = "lua LazyVim.pick()()",
						desc = " Find File",
						icon = " ",
						key = "f",
					},
					{
						action = "ene | startinsert",
						desc = " New File",
						icon = " ",
						key = "n",
					},
					{
						action = 'lua LazyVim.pick("oldfiles")()',
						desc = " Recent Files",
						icon = " ",
						key = "r",
					},
					{
						action = 'lua LazyVim.pick("live_grep")()',
						desc = " Find Text",
						icon = " ",
						key = "g",
					},
					{
						action = "lua LazyVim.pick.config_files()()",
						desc = " Config",
						icon = " ",
						key = "c",
					},
					{
						action = 'lua require("persistence").load()',
						desc = " Restore Session",
						icon = " ",
						key = "s",
					},
					{
						action = "LazyExtras",
						desc = " Lazy Extras",
						icon = " ",
						key = "x",
					},
					{
						action = "Lazy",
						desc = " Lazy",
						icon = "󰒲 ",
						key = "l",
					},
					{
						action = function()
							vim.api.nvim_input("<cmd>qa<cr>")
						end,
						desc = " Quit",
						icon = " ",
						key = "q",
					},
				},
				footer = function()
					local stats = require("lazy").stats()
					local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
					return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
				end,
			},
		}

		for _, button in ipairs(opts.config.center) do
			button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
			button.key_format = "  %s"
		end

		require("dashboard").setup(opts)

		if vim.o.filetype == "lazy" then
			vim.api.nvim_create_autocmd("WinClosed", {
				pattern = tostring(vim.api.nvim_get_current_win()),
				once = true,
				callback = function()
					vim.schedule(function()
						vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
					end)
				end,
			})
		end
	end,
}
