vim.opt.number = true;
vim.opt.mouse  = 'a';

vim.opt.smarttab = true;
vim.bo.shiftwidth = 3;
vim.cmd[[set clipboard+=unnamedplus]]

vim.cmd[[colorscheme gruvbox]]

require('lualine').setup{
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_c = {
			'filename',
			function()
			return vim.fn['nvim_treesitter#statusline'](180)
		end},
		
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	},
}
