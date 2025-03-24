-- This file is meant to hold all my debugging functionality for Neovim itself

vim.keymap.set({ 'n', 'i', 's' }, '<F5>', function()
  local ls = require('luasnip')

  -- command
  local command = {
    "something cool",
    ls.jumpable(1),
    "hello world",
    "This is Steven Laverne Peterson Jr.",
  }
  -- end

  local message = {}
  table.insert(message, "")
  for _, cmd in ipairs(command) do
    table.insert(message, tostring(cmd))
  end
  table.insert(message, "")

  -- Create a scratch buffer (unlisted, nofile)
  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, message)

  -- Determine window size based on message length
  local max_width = 0
  for _, msg in ipairs(message) do
    if #msg > max_width then
      max_width = #msg
    end
  end

  local width = math.max(30, max_width + 4)
  local height = math.max(5, vim.api.nvim_buf_line_count(buf));

  -- Configure floating window options
  local window_opts = {
    relative = 'editor',
    width = width,
    height = height,
    col = math.floor((vim.o.columns - width) / 2),
    row = math.floor((vim.o.lines - height) / 2),
    style = 'minimal',
    border = 'rounded',
  }

  -- Open the floating window
  local win = vim.api.nvim_open_win(buf, false, window_opts)

  -- Automatically close the window after 2.5 seconds (2500 ms)
  vim.defer_fn(function()
    if vim.api.nvim_win_is_valid(win) then
      vim.api.nvim_win_close(win, true)
    end
  end, 2500)
end, { desc = "Floating Window to help with Debugging Neovim" })
