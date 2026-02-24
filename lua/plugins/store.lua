return {
	{
		"alex-popov-tech/store.nvim",
		-- Removed markview.nvim dependency - causes crash on README files
		cmd = "Store",
	},
	-- Disable markview.nvim
	{ "OXY2DEV/markview.nvim", enabled = false },
}
