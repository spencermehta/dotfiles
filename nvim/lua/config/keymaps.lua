-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Git / Fugitive keymaps

local map = vim.keymap.set

-- Git status
map("n", "<leader>gs", "<cmd>Git<cr>", { desc = "Git status" })

-- Git push
map("n", "<leader>gp", "<cmd>Git push<cr>", { desc = "Git push" })
map("n", "<leader>gpn", "<cmd>Git push --no-verify<cr>", { desc = "Git push (no verify)" })

-- Git push upstream
map("n", "<leader>gps", "<cmd>Git push --set-upstream origin HEAD<cr>", { desc = "Git push upstream" })
map(
  "n",
  "<leader>gpsn",
  "<cmd>Git push --set-upstream origin HEAD --no-verify<cr>",
  { desc = "Git push upstream (no verify)" }
)

-- Git pull
map("n", "<leader>gl", "<cmd>Git pull<cr>", { desc = "Git pull" })

-- Git stash
map("n", "<leader>gts", "<cmd>Git stash<cr>", { desc = "Git stash" })

-- Git commit with message prompt
map("n", "<leader>gc", function()
  vim.ui.input({ prompt = "Commit message: " }, function(msg)
    if msg and msg ~= "" then
      vim.cmd("Git commit -m " .. vim.fn.shellescape(msg))
    end
  end)
end, { desc = "Git commit" })
