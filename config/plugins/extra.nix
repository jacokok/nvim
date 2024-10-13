{ pkgs, ... }: {
  extraPlugins = [
    # {
    # plugin = pkgs.vimPlugins.vim-dadbod;
    # config = builtins.readFile ./configs/dadbod.vim;
    # }
    { plugin = pkgs.vimPlugins.vim-dadbod-ui; }
    { plugin = pkgs.vimPlugins.vim-dadbod-completion; }
  ];
}
