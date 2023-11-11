return {
    "EdenEast/nightfox.nvim",
	name = "nightfox",
	priority = 1000,
    config = function()
        require('nightfox').setup({
            options = {
                styles = {
                    comments = "italic",
                    keywords = "bold",
                    types = "italic,bold",
                }
            }
        })
        vim.cmd("colorscheme duskfox")
    end,
}
