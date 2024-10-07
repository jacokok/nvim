{
  keymaps = [
    #Better Up/Down
    {
      key = "j";
      action = "v:count == 0 ? 'gj' : 'j'";
      mode = [ "n" "x" ];
      options = {
        expr = true;
        silent = true;
      };
    }
    {
      key = "<Down>";
      action = "v:count == 0 ? 'gj' : 'j'";
      mode = [ "n" "x" ];
      options = {
        expr = true;
        silent = true;
      };
    }
    {
      key = "k";
      action = "v:count == 0 ? 'gk' : 'k'";
      mode = [ "n" "x" ];
      options = {
        expr = true;
        silent = true;
      };
    }
    {
      key = "<Up>";
      action = "v:count == 0 ? 'gk' : 'k'";
      mode = [ "n" "x" ];
      options = {
        expr = true;
        silent = true;
      };
    }

    # Move line
    {
      mode = "n";
      action = "<cmd>m .+1<cr>==";
      key = "<A-j>";
      options = { desc = "Move Down"; };
    }
    {
      mode = "i";
      action = "<esc><cmd>m .+1<cr>==gi";
      key = "<A-j>";
      options = { desc = "Move Down"; };
    }
    {
      mode = "n";
      action = "<cmd>m .-2<cr>==";
      key = "<A-k>";
      options = { desc = "Move Up"; };
    }
    {
      mode = "i";
      action = "<esc><cmd>m .-2<cr>==gi";
      key = "<A-k>";
      options = { desc = "Move Up"; };
    }
    {
      mode = "v";
      action = ":m '>+1<cr>gv=gv";
      key = "<A-j>";
      options = { desc = "Move Down"; };
    }
    {
      mode = "v";
      action = ":m '<-2<cr>gv=gv";
      key = "<A-k>";
      options = { desc = "Move Up"; };
    }

    # Move window
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h";
      options = {
        remap = true;
        desc = "Go to Left Window";
      };
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w>l";
      options = {
        remap = true;
        desc = "Go to Right Window";
      };
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<C-w>j";
      options = {
        remap = true;
        desc = "Go to Lower Window";
      };
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-w>k";
      options = {
        remap = true;
        desc = "Go to Upper Window";
      };
    }

    # Toggle Options
    {
      key = "<leader>us";
      action = "<cmd>set spell!<cr>";
      options = { desc = "Toggle Spell Check"; };
    }

    # Resize window using <ctrl> arrow keys
    {
      mode = "n";
      action = "<cmd>resize +2<cr>";
      key = "<C-Up>";
      options = { desc = "Increase Window Height"; };
    }
    {
      mode = "n";
      action = "<cmd>resize -2<cr>";
      key = "<C-Down>";
      options = { desc = "Decrease Window Height"; };
    }
    {
      mode = "n";
      action = "<cmd>vertical resize -2<cr>";
      key = "<C-Left>";
      options = { desc = "Decrease Window Width"; };
    }
    {
      mode = "n";
      action = "<cmd>vertical resize +2<cr>";
      key = "<C-Right>";
      options = { desc = "Increase Window Width"; };
    }

    # Windows
    {
      mode = "n";
      action = "<c-w>";
      key = "<leader>w";
      options = {
        desc = "Windows";
        remap = true;
      };
    }
    {
      mode = "n";
      action = "<C-W>s";
      key = "<leader>-";
      options = {
        desc = "Split Window Below";
        remap = true;
      };
    }
    {
      mode = "n";
      action = "<C-W>v";
      key = "<leader>|";
      options = {
        desc = "Split Window Right";
        remap = true;
      };
    }
    {
      mode = "n";
      action = "<C-W>c";
      key = "<leader>wd";
      options = {
        desc = "Delete Window";
        remap = true;
      };
    }

    #Buffers
    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>bprevious<cr>";
      options = { desc = "Prev Buffer"; };
    }
    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>bnext<cr>";
      options = { desc = "Next Buffer"; };
    }
    {
      key = "<leader>bb";
      action = "<cmd>e #<cr>";
      mode = "n";
      options.desc = "Switch to Other Buffer";
    }

    #Save File
    {
      mode = [ "n" "x" "i" "s" ];
      key = "<C-s>";
      action = "<cmd>w<cr><esc>";
      options = { desc = "Save File"; };
    }

    #Better indenting
    {
      mode = [ "v" ];
      key = "<";
      action = "<gv";
    }
    {
      mode = [ "v" ];
      key = ">";
      action = ">gv";
    }

    # Clear Search with escape
    {
      mode = [ "i" "n" ];
      action = "<cmd>noh<cr><esc>";
      key = "<esc>";
      options = { desc = "Escape and Clear hlsearch"; };
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
    {
      key = "<c-s-v>";
      action = ''
        function ()
        	vim.api.nvim_paste(vim.fn.getreg('+'), true, -1)
        end
      '';
      mode = [ "i" "c" "t" ];
      lua = true;
    }
    {
      key = "<C-S-c>";
      action = ''"+y'';
      mode = [ "n" "v" ];
    }
    {
      key = "<C-S-v>";
      action = ''"+p'';
      mode = [ "n" "v" ];
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
      key = "<C-/>";
      options = { desc = "Toggle Terminal"; };
    }
    {
      mode = "t";
      action = "<CMD>ToggleTerm<CR>";
      key = "<C-/>";
      options = { desc = "Toggle Terminal"; };
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

    # Clear search, diff update and redraw
    {
      mode = "n";
      action = "Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>";
      key = "<leader>ur";
    }

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
  ];
}
