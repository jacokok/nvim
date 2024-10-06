{
  plugins.lsp = {
    enable = true;
    servers = {
      # Average webdev LSPs
      #tsserver.enable = true; # TS/JS
      ts-ls.enable = true;
      cssls.enable = true; # CSS
      tailwindcss = {
        enable = true;
        filetypes = [ "html" "js" "ts" "jsx" "tsx" "mdx" "svelte" ];
      };
      html.enable = true; # HTML
      #astro.enable = true; # AstroJS
      #phpactor.enable = true; # PHP
      svelte.enable = true; # Svelte
      #vuels.enable = false; # Vue
      pyright.enable = true; # Python
      gopls.enable = true; # Go
      marksman.enable = true; # Markdown
      nil-ls.enable = true; # Nix
      dockerls.enable = true; # Docker
      bashls.enable = true; # Bash
      clangd.enable = true; # C/C++
      csharp-ls.enable = true; # C#
      yamlls.enable = true; # YAML
      jsonls.enable = true; # JSON
      # eslint.enable = true;

      lua-ls = {
        # Lua
        enable = true;
        settings.telemetry.enable = false;
      };

      # Rust
      rust-analyzer = {
        enable = true;
        installRustc = true;
        installCargo = true;
      };
    };
    keymaps.lspBuf = {
      "gd" = "definition";
      "gD" = "references";
      "gt" = "type_definition";
      "gi" = "implementation";
      "K" = "hover";
    };
  };
}
