-- Leader mapping
vim.g.mapleader = " "

-- Save
vim.keymap.set("n", "<leader>w", "<cmd>write<cr>", { desc = "Save" })

vim.keymap.set("n", "<leader>e", function()
	require("oil").open(vim.fn.expand("%:p:h"))
end, { desc = "Open Oil (current file dir)" })

-- Harpoon Mappings
local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end)
vim.keymap.set("n", "<leader>h", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)

for i = 1, 9 do
	vim.keymap.set("n", "<leader>" .. i, function()
		require("harpoon"):list():select(i)
	end, { desc = "Harpoon goto " .. i })
end

-- Telescope Mappings
vim.keymap.set("n", "<leader>ff", function()
	require("telescope.builtin").find_files()
end, { desc = "Find files" })

vim.keymap.set("n", "<leader>fg", function()
	require("telescope.builtin").live_grep()
end, { desc = "Live grep" })

vim.keymap.set("n", "<leader>fb", function()
	require("telescope.builtin").buffers()
end, { desc = "Find buffers" })

vim.keymap.set("n", "<leader>fh", function()
	require("telescope.builtin").help_tags()
end, { desc = "Help tags" })

-- Prettier Mappings
vim.keymap.set("n", "<leader>p", function()
	require("conform").format({ async = true })
end, { desc = "Format with Prettier" })
