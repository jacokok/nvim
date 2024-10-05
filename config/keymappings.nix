{ config, ... }: {
  keymaps = [
    # Custom
    # Move line
    {
      mode = "n";
      action = ":m+<CR>==";
      key = "<A-j>";
    }
    {
      mode = "n";
      action = ":m+<CR>==";
      key = "<A-down>";
    }
    {
      mode = "i";
      action = "<Esc>:m+<CR>==gi";
      key = "<A-j>";
    }
    {
      mode = "i";
      action = "<Esc>:m+<CR>==gi";
      key = "<A-down>";
    }
    {
      mode = "n";
      action = ":m-2<CR>==";
      key = "<A-k>";
    }
    {
      mode = "n";
      action = ":m-2<CR>==";
      key = "<A-up>";
    }
    {
      mode = "i";
      action = "<Esc>:m-2<CR>==gi";
      key = "<A-up>";
    }
    {
      mode = "i";
      action = "<Esc>:m-2<CR>==gi";
      key = "<A-up>";
    }

    # Copy paste Clipboard
    {
      mode = [ "n" "v" ];
      action = ''"+y'';
      key = "<leader>y";
    }
    {
      mode = [ "n" "v" ];
      action = ''"+p'';
      key = "<leader>p";
    }
    # Debugging
    {
      mode = "n";
      key = "<leader>dB";
      action =
        "\n        <cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>\n      ";
      options = {
        silent = true;
        desc = "Breakpoint Condition";
      };
    }
    {
      mode = "n";
      key = "<leader>db";
      action = ":DapToggleBreakpoint<cr>";
      options = {
        silent = true;
        desc = "Toggle Breakpoint";
      };
    }
    {
      mode = "n";
      key = "<leader>du";
      action = "<cmd>lua require('dapui').toggle()<cr>";
      options = {
        silent = true;
        desc = "Dap UI";
      };
    }
    {
      mode = "n";
      key = "<leader>da";
      action = "<cmd>lua require('dap').continue({ before = get_args })<cr>";
      options = {
        silent = true;
        desc = "Run with Args";
      };
    }

    # Oil
    {
      mode = "n";
      action = "<CMD>Oil<CR>";
      key = "-";
    }
    # ToggleTerm
    {
      mode = "n";
      action = "<CMD>ToggleTerm<CR>";
      key = "`";
    }

    # Neo-tree bindings
    {
      action = "<cmd>Neotree toggle<CR>";
      key = "<leader>e";
    }

    # Undotree
    {
      mode = "n";
      key = "<leader>ut";
      action = "<cmd>UndotreeToggle<CR>";
      options = { desc = "Undotree"; };
    }

    # Lazygit
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>LazyGit<CR>";
      options = { desc = "LazyGit (root dir)"; };
    }

    # Commentary bindings
    # {
    # action = "<cmd>Commentary<CR>";
    # key = "<leader>/";
    # }

    # Telescope bindings
    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>fw";
    }
    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<C-f>";
    }
    {
      action = "<cmd>Telescope find_files<CR>";
      key = "<leader>ff";
    }
    {
      action = "<cmd>Telescope find_files<CR>";
      key = "<C-p>";
    }
    {
      action = "<cmd>Telescope git_commits<CR>";
      key = "<leader>fg";
    }
    {
      action = "<cmd>Telescope oldfiles<CR>";
      key = "<leader>fh";
    }
    {
      action = "<cmd>Telescope buffers<CR>";
      key = "<leader>fb";
    }
    {
      action = "<cmd>Telescope commands<CR>";
      key = "<leader>fc";
    }
    {
      action = "<cmd>Telescope marks<CR>";
      key = "<leader>fm";
    }
    {
      action = "<cmd>Telescope spell_suggest<CR>";
      key = "<leader>fs";
    }
    {
      action = "<cmd>Telescope treesitter<CR>";
      key = "<leader>ft";
    }
    {
      action = "<cmd>:noh<CR>";
      key = "<leader>fr";
    }

    # Notify bindings
    # {
    #   mode = "n";
    #   key = "<leader>un";
    #   action = ''
    #     <cmd>lua require("notify").dismiss({ silent = true, pending = true })<cr>
    #   '';
    #   options = { desc = "Dismiss All Notifications"; };
    # }

    #Code Actions
    {
      key = "<leader>cd";
      action = "<cmd>lua vim.lsp.buf.definition()<cr>";
      options.desc = "LSP Definition";
    }
    {
      key = "<leader>cr";
      action = "<cmd>lua vim.lsp.buf.references()<cr>";
      options.desc = "LSP References";
    }
    {
      key = "<leader>ci";
      action = "<cmd>lua vim.lsp.buf.implementation()<cr>";
      options.desc = "LSP Implementation";
    }
    {
      key = "<leader>ct";
      action = "<cmd>lua vim.lsp.buf.type_definition()<cr>";
      options.desc = "LSP Type Definition";
    }
    {
      key = "<leader>cs";
      action = "<cmd>lua vim.lsp.buf.signature_help()<cr>";
      options.desc = "LSP Signature Help";
    }
    {
      key = "<leader>ch";
      action = "<cmd>lua vim.lsp.buf.hover()<cr>";
      options.desc = "LSP Hover";
    }
    {
      key = "<leader>ca";
      action = "<cmd>lua vim.lsp.buf.code_action()<cr>";
      options.desc = "LSP Code Action";
    }
    {
      key = "<leader>cf";
      action = "<cmd>lua vim.lsp.buf.formatting()<cr>";
      options.desc = "LSP Formatting";
    }
    {
      key = "<leader>ce";
      action = "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>";
      options.desc = "LSP Line Diagnostics";
    }
    {
      key = "<leader>cn";
      action = "<cmd>lua vim.lsp.diagnostic.goto_next()<cr>";
      options.desc = "LSP Next Diagnostic";
    }
    {
      key = "<leader>cp";
      action = "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>";
      options.desc = "LSP Previous Diagnostic";
    }

    # Bufferline bindings

    {
      mode = "n";
      key = "<Tab>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = { desc = "Cycle to next buffer"; };
    }

    {
      mode = "n";
      key = "<S-Tab>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = { desc = "Cycle to previous buffer"; };
    }

    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = { desc = "Cycle to next buffer"; };
    }

    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = { desc = "Cycle to previous buffer"; };
    }

    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>bdelete<cr>";
      options = { desc = "Delete buffer"; };
    }
  ];
}
