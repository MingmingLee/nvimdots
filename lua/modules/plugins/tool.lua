local tool = {}

tool["tpope/vim-fugitive"] = {
	lazy = true,
	cmd = { "Git", "G" },
}
-- This is specifically for fcitx5 users who code in languages other than English
-- tool["pysan3/fcitx5.nvim"] = {
-- 	lazy = true,
-- 	event = "BufReadPost",
-- 	cond = vim.fn.executable("fcitx5-remote") == 1,
-- 	config = require("tool.fcitx5"),
-- }
tool["Bekaboo/dropbar.nvim"] = {
	lazy = false,
	config = require("tool.dropbar"),
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-telescope/telescope-fzf-native.nvim",
	},
}
tool["nvim-tree/nvim-tree.lua"] = {
	lazy = true,
	cmd = {
		"NvimTreeToggle",
		"NvimTreeOpen",
		"NvimTreeFindFile",
		"NvimTreeFindFileToggle",
		"NvimTreeRefresh",
	},
	config = require("tool.nvim-tree"),
}
tool["ibhagwan/smartyank.nvim"] = {
	lazy = true,
	event = "BufReadPost",
	config = require("tool.smartyank"),
}
tool["michaelb/sniprun"] = {
	lazy = true,
	-- You need to cd to `~/.local/share/nvim/site/lazy/sniprun/` and execute `bash ./install.sh`,
	-- if you encountered error about no executable sniprun found.
	build = "bash ./install.sh",
	cmd = { "SnipRun", "SnipReset", "SnipInfo" },
	config = require("tool.sniprun"),
}
tool["akinsho/toggleterm.nvim"] = {
	lazy = true,
	cmd = {
		"ToggleTerm",
		"ToggleTermSetName",
		"ToggleTermToggleAll",
		"ToggleTermSendVisualLines",
		"ToggleTermSendCurrentLine",
		"ToggleTermSendVisualSelection",
	},
	config = require("tool.toggleterm"),
}
tool["folke/trouble.nvim"] = {
	lazy = true,
	cmd = { "Trouble", "TroubleToggle", "TroubleRefresh" },
	config = require("tool.trouble"),
}
tool["folke/which-key.nvim"] = {
	lazy = true,
	event = { "CursorHold", "CursorHoldI" },
	config = require("tool.which-key"),
}
tool["gelguy/wilder.nvim"] = {
	lazy = true,
	event = "CmdlineEnter",
	config = require("tool.wilder"),
	dependencies = { "romgrk/fzy-lua-native" },
}

----------------------------------------------------------------------
--                        Telescope Plugins                         --
----------------------------------------------------------------------
tool["nvim-telescope/telescope.nvim"] = {
	lazy = true,
	cmd = "Telescope",
	config = require("tool.telescope"),
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-tree/nvim-web-devicons" },
		{ "jvgrootveld/telescope-zoxide" },
		{ "debugloop/telescope-undo.nvim" },
		{ "nvim-telescope/telescope-frecency.nvim" },
		{ "nvim-telescope/telescope-live-grep-args.nvim" },
		{ "fcying/telescope-ctags-outline.nvim"},
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		{
			"FabianWirth/search.nvim",
			config = require("tool.search"),
		},
		{
			"ahmedkhalf/project.nvim",
			event = { "CursorHold", "CursorHoldI" },
			config = require("tool.project"),
		},
		{
			"aaronhallaert/advanced-git-search.nvim",
			cmd = { "AdvancedGitSearch" },
			dependencies = {
				"tpope/vim-rhubarb",
				"tpope/vim-fugitive",
				"sindrets/diffview.nvim",
			},
		},
	},
}

----------------------------------------------------------------------
--                           DAP Plugins                            --
----------------------------------------------------------------------
tool["mfussenegger/nvim-dap"] = {
	lazy = true,
	cmd = {
		"DapSetLogLevel",
		"DapShowLog",
		"DapContinue",
		"DapToggleBreakpoint",
		"DapToggleRepl",
		"DapStepOver",
		"DapStepInto",
		"DapStepOut",
		"DapTerminate",
	},
	config = require("tool.dap"),
	dependencies = {
		{
			"rcarriga/nvim-dap-ui",
			config = require("tool.dap.dapui"),
			dependencies = {
				"nvim-neotest/nvim-nio",
			},
		},
		{ "jay-babu/mason-nvim-dap.nvim" },
	},
}

tool["Yggdroot/LeaderF"] = {
	lazy = false,
	run = ':LeaderfInstallCExtension',
}

tool["christoomey/vim-tmux-navigator"] = {
	lazy = false,
}

tool["tmux-plugins/vim-tmux"] = {
	lazy = false,
}

tool["skywind3000/asyncrun.vim"] = {
	lazy = false,
}

tool["liuchengxu/vista.vim"] = {
	lazy = false,
}

tool["junegunn/fzf"] = {
	lazy = false,
	run = function()
        -- 使用 fzf-nvim 包中的安装函数来安装 fzf 二进制文件
        vim.fn['fzf#install']()
        end
}

tool["inkarkat/vim-mark"] = {
	lazy = false,
	dependencies = { "inkarkat/vim-ingo-library" },
}

tool["cshuaimin/ssr.nvim"] = {
	lazy = false,
	  module = "ssr",
  -- Calling setup is optional.
  config = function()
    require("ssr").setup {
      border = "rounded",
      min_width = 50,
      min_height = 5,
      max_width = 120,
      max_height = 25,
      adjust_window = true,
      keymaps = {
        close = "q",
        next_match = "n",
        prev_match = "N",
        replace_confirm = "<cr>",
        replace_all = "<leader><cr>",
      },
    }
  end
}

tool["jeffkreeftmeijer/vim-numbertoggle"] = {

	lazy = false,
}

tool["gbprod/yanky.nvim"] = {
	lazy = false,
}

tool['Wansmer/symbol-usage.nvim'] = {
	lazy = false,
	event = 'BufReadPre', -- 在LspAttach之前运行，如果使用的是nvim 0.9。对于0.10，使用'LspAttach'
	config = function()
		require('symbol-usage').setup()
	end
}

tool["linrongbin16/fzfx.nvim"] = {
	dependencies = { "nvim-tree/nvim-web-devicons", 'junegunn/fzf' },

		    -- specify version to avoid break changes
		    -- version = 'v5.*',

		    config = function()
			      require("fzfx").setup()
		    end,

}
--tool["smoka7/multicursors.nvim"] = {
--    event = "VeryLazy",
--    dependencies = {
--        'nvimtools/hydra.nvim',
--    },
--	lazy = false,
--    opts = {},
--    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
--    keys = {
--            {
--                mode = { 'v', 'n' },
--                '<C-m>',
--                '<cmd>MCstart<cr>',
--                desc = 'Create a selection for selected text or word under the cursor',
--            },
--        },
--}

tool["chrisgrieser/nvim-spider"] = {
	lazy = false,
	keys = {
		{
			"w",
			"<cmd>lua require('spider').motion('w')<CR>",
			mode = { "n", "o", "x" },
		},

		{
			"b",
			"<cmd>lua require('spider').motion('b')<CR>",
			mode = { "n", "o", "x" },
		},
		{
			"e",
			"<cmd>lua require('spider').motion('e')<CR>",
			mode = { "n", "o", "x" },
		},

	},
}

return tool
