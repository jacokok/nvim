{ self, ... }: {
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
      mode = "n";
      action = "\"+y";
      key = "<leader>y";
    }
    {
      mode = "v";
      action = "\"+y";
      key = "<leader>y";
    }
    {
      mode = "n";
      action = "\"+p";
      key = "<leader>p";
    }
    {
      mode = "v";
      action = "\"+p";
      key = "<leader>p";
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
      options = {
        desc = "Undotree";
      };
    }

    # Lazygit
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>LazyGit<CR>";
      options = {
        desc = "LazyGit (root dir)";
      };
    }

    # Commentary bindings
    {
      action = "<cmd>Commentary<CR>";
      key = "<leader>/";
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
    # {
    #   action = "<cmd>Telescope colorscheme<CR>";
    #   key = "<leader>ch";
    # }
    # {
    #   action = "<cmd>Telescope man_pages<CR>";
    #   key = "<leader>fm";
    # }

    # Notify bindings

    {
      mode = "n";
      key = "<leader>un";
      action = ''
        <cmd>lua require("notify").dismiss({ silent = true, pending = true })<cr>
      '';
      options = {
        desc = "Dismiss All Notifications";
      };
    }

    # Bufferline bindings

    {
      mode = "n";
      key = "<Tab>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Cycle to next buffer";
      };
    }

    {
      mode = "n";
      key = "<S-Tab>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        desc = "Cycle to previous buffer";
      };
    }

    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Cycle to next buffer";
      };
    }

    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        desc = "Cycle to previous buffer";
      };
    }

    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>bdelete<cr>";
      options = {
        desc = "Delete buffer";
      };
    }
  ];
}
