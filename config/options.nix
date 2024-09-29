{ self, ... }: {
  globalOpts = {
    # Line numbers
    number = true;
    relativenumber = true;

    # Always show the signcolumn, otherwise text would be shifted when displaying error icons
    signcolumn = "yes";
    # clipboard = "unnamedplus";

    # Search
    ignorecase = true;
    smartcase = true;

    # Tab defaults (might get overwritten by an LSP server)
    tabstop = 2;
    shiftwidth = 2;
    softtabstop = 0;
    expandtab = true;
    smarttab = true;
    cursorline = true;

    # Show line and column when searching
    ruler = true;
    undofile = true;
    autoindent = true;

    # Global substitution by default
    gdefault = true;

    # Start scrolling when the cursor is X lines away from the top/bottom
    scrolloff = 5;
    termguicolors = true;
  };

  globals.mapleader = " ";

  autoCmd = [
    {
      event = "TermOpen";
      command = "setlocal nonumber norelativenumber";
    }
  ];
}
