-- acroding to mastermind this is requred and understanding of this is not required
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- aliasing keymap function
local keymap = vim.api.nvim_set_keymap

-- setting space leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [e]xplorer
keymap("n", "<leader>e", ":Lex 43<cr>", opts)

-- navigating buffers
keymap("n", "<S-l>", ":bnext<cr>", opts)
keymap("n", "<S-h>", ":bprevious<cr>", opts)

-- identing stuff, not sure if it works for me.
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up and down like a boss
keymap("v", "<A-j>", ":m .+1<cr>==", opts)
keymap("v", "<A-k>", ":m .-2<cr>==", opts)
keymap("v", "p", '"_dp', opts)

local function split_comment_string(cs)
  if not cs:find("%%s") then
    return "", "" -- if something wrong with the comment string, return emptys
  end
  local left, right = cs:match("^(.-)%%s(.-)$") or "", "" -- we split in groups our findings on both sides of %s or return empty strings
  return left, right
end

local function wrap(header)
  local buf = 0 -- current buffer only, always
  local cs = vim.bo[buf].commentstring -- reaching out to detected comment string for a filetype
  local left, right = split_comment_string(cs)

  local entry = vim.api.nvim_buf_get_lines(buf, 0, 1, false) -- get the first line of the buffer
  local inject_at = 0
  
  -- we don't want to mess with the scripts with shebangs, so if we detect one, we inject our comment after it
  if entry[1] and entry[1]:match("^#!") then
    inject_at = 1
  end

  local wrapped = {}
  for _, line in ipairs(header) do
    table.insert(wrapped, left .. line .. right)
  end

  table.insert(wrapped, "")
  vim.api.nvim_buf_set_lines(buf, inject_at, inject_at, false, wrapped)
end

local function print_copyright()
  local year = os.date("%Y")
  local header = {
    "Copyright (c) "..year.." Nuvei Corp.",
    "SPDX-License-Identifier: MIT",
  }
  wrap(header)
end

-- Nuvei copyright message
vim.keymap.set("n", "<leader>nh", print_copyright, { desc = "Insert Nuvei copyright header" })
