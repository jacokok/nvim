{
  autoCmd = [
    {
      event = "TermOpen";
      command = "setlocal nonumber norelativenumber";
    }
    {
      event = "TextYankPost";
      pattern = "*";
      command = "lua vim.highlight.on_yank{}";
    }
  ];
}
