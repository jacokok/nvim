{
  plugins = {
    cmp = {
      enable = true;
      settings = {
        autoEnableSources = true;
        experimental = { ghost_text = true; };
        performance = {
          debounce = 60;
          fetchingTimeout = 200;
          maxViewEntries = 30;
        };
        snippet = { expand = "luasnip"; };
        formatting = { fields = [ "kind" "abbr" "menu" ]; };
        sources = [
          { name = "nvim_lsp"; }
          { name = "emoji"; }
          {
            name = "buffer";
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
          }
          # { name = "copilot"; } # enable/disable copilot
          { name = "path"; }
          { name = "nvim_lua"; }
          { name = "luasnip"; }
        ];

        window = {
          completion = { border = "solid"; };
          documentation = { border = "solid"; };
        };

        mapping = {
          "<C-k>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<C-j>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<Up>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<Down>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
        };
      };
      filetype = {
        sql = {
          sources =
            [{ name = "buffer"; } { name = "vim-dadbod-completion"; }];
        };
      };
    };
    luasnip.enable = true;

    cmp-emoji = { enable = true; };
    cmp-nvim-lsp = {
      enable = true; # LSP
    };
    cmp-buffer = { enable = true; };
    cmp-path = {
      enable = true; # file system paths
    };
    cmp_luasnip = {
      enable = true; # snippets
    };
    cmp-cmdline = {
      enable = true; # autocomplete for cmdline
    };
  };
}
