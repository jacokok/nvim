{
  plugins.treesitter = {
    enable = true;
    settings = {
      highlight = {
        enable = true;
        additional_vim_regex_highlighting = false;
      };
      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection = false;
          node_decremental = "grm";
          node_incremental = "grn";
          scope_incremental = "grc";
        };
      };
      indent = { enable = true; };
      # ensure_installed = [
      #   "bash"
      #   "c_sharp"
      #   "dockerfile"
      #   "json"
      #   "lua"
      #   "html"
      #   "json"
      #   "markdown"
      #   "nix"
      #   "regex"
      #   "svelte"
      #   "toml"
      #   "typescript"
      #   "vim"
      #   "vimdoc"
      #   "xml"
      #   "yaml"
      # ];
    };
  };
}
