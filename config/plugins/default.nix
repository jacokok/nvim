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
    ./dap.nix
    ./mini.nix
    ./treesitter.nix
    ./bufferline.nix
    ./lazy.nix
    ./extra.nix
  ];

  plugins = {
    # Auto-tagging
    ts-autotag = { enable = true; };

    # Saves your last session when you exit
    # persistence = { enable = true; };

    # Sidebar showing trouble and diagnsotics
    trouble = { enable = true; };

    lspkind = { enable = true; };

    # Todo comments
    todo-comments = { enable = true; };

    # Nix expressions in Neovim
    nix = { enable = true; };

    which-key = {
      enable = true;
      settings = {
        icons = { group = "+"; };
        spec = [
          {
            __unkeyed-1 = "<leader>u";
            mode = "n";
            group = "+ui";
          }
          {
            __unkeyed-1 = "<leader>w";
            mode = "n";
            group = "+windows";
          }
          {
            __unkeyed-1 = "<leader>c";
            mode = [ "n" "v" ];
            group = "+code";
          }
          {
            __unkeyed-1 = "<leader>f";
            mode = "n";
            group = "+search";
          }
        ];
      };
    };

    lazygit = { enable = true; };

    gitsigns = { enable = true; };

    # noice = {
    #   enable = true;
    # };
    oil = { enable = true; };

    # notify = {
    #   enable = true;
    #   timeout = 500;
    #   topDown = true;
    # };

    # Markdown preview server
    markdown-preview = {
      enable = true;
      settings.theme = "dark";
    };

    # markview = { enable = true; };
    # render-markdown = { enable = true; };

    web-devicons = { enable = true; };

    schemastore = {
      enable = true;
      yaml.enable = true;
      json.enable = true;
    };
  };
}
