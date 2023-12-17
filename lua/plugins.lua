return {
    {'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim',
            'nvim-tree/nvim-web-devicons',
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = { animation = false },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },

    {'neovim/nvim-lspconfig', config = function()
        require'lspconfig'.html.setup{}
        require'lspconfig'.digestif.setup{}
        require'lspconfig'.hls.setup{}
        require'lspconfig'.lemminx.setup{}
        require'lspconfig'.rust_analyzer.setup{}
    end, dependencies = 'ms-jpq/coq_nvim'},

	{
		'Julian/lean.nvim',
		event = { 'BufReadPre *.lean', 'BufNewFile *.lean' },
		dependencies = {
			'neovim/nvim-lspconfig',
			'nvim-lua/plenary.nvim',
			-- you also will likely want nvim-cmp or some completion engine
		},
		-- see details below for full configuration options
		opts = {
			lsp = {
				on_attach = on_attach,
			},
			mappings = true,
		}
	},

	{
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {integrations = {
            gitsigns = true,
            barbar = true,
        }}
    },
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.theta'.config)
        end
    },
    {
        'freddiehaddad/feline.nvim',
        config = function(self)
            local ctp_feline = require'catppuccin.groups.integrations.feline'

            ctp_feline.setup{}

            require("feline").setup({
                components = ctp_feline.get(),
            })
        end,
        dependencies = {"catppuccin"}
    },
}
