-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "<leader>tr", "<cmd>FlutterRun<cr>", { desc = "Flutter Run" })
map("n", "<leader>th", "<cmd>FlutterReload<cr>", { desc = "Flutter Hot Reload" })
map("n", "<leader>tH", "<cmd>FlutterRestart<cr>", { desc = "Flutter Hot Restart" })
map("n", "<leader>tc", "<cmd>FlutterCommands<cr>", { desc = "Flutter Commands" })
map("n", "<leader>td", "<cmd>FlutterDevices<cr>", { desc = "Flutter Devices" })
map("n", "<leader>te", "<cmd>FlutterEmulators<cr>", { desc = "Flutter Emulators" })
map("n", "<leader>tt", "<cmd>FlutterLogToggle<cr>", { desc = "Toggle Log Window" })
