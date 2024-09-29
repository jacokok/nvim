{
  imports = [
    ./alpha.nix
    ./lualine.nix
    ./telescope.nix
    ./toggleTerm.nix
    ./neoTree.nix
    ./undoTree.nix
    ./lsp.nix
    ./cmp.nix
    ./none-ls.nix
  ];

  plugins = {
    # Top Tab bar
    bufferline = { enable = true; };

    # Includes all parsers for treesitter
    treesitter = { enable = true; };

    # Auto-tagging
    ts-autotag = { enable = true; };

    # Autopairs
    nvim-autopairs = { enable = true; };

    oil = { enable = true; };

    # Saves your last session when you exit
    persistence = { enable = true; };

    # Sidebar showing trouble and diagnsotics
    trouble = { enable = true; };

    lspkind = { enable = true; };

    commentary = { enable = true; };

    # Todo comments
    todo-comments = { enable = true; };

    # Nix expressions in Neovim
    nix = { enable = true; };

    which-key = { enable = true; };

    lazygit = { enable = true; };

    gitsigns = { enable = true; };

    # noice = {
    #   enable = true;
    # };

    notify = {
      enable = true;
      timeout = 500;
      topDown = true;
    };

    # Markdown preview server
    markdown-preview = {
      enable = true;
      settings.theme = "dark";
    };

    web-devicons = { enable = true; };

    schemastore = {
      enable = true;
      yaml.enable = true;
      json.enable = true;
    };
  };
}
