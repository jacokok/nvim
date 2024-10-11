{
  plugins.bufferline = {
    enable = true;
    settings = {
      highlights = {
        background = { bg = "#181825"; };
        buffer_selected = { fg = "#89b4fa"; };
        indicator_selected = { fg = "#89b4fa"; };
      };
      options = {
        auto_toggle_bufferline = true;
        separator_style = [ "" "" ];
        show_buffer_close_icons = false;
        offsets = [{
          filetype = "neo-tree";
          text = "Neo-tree";
          highlight = "Directory";
          text_align = "left";
        }];
      };
    };
  };
}
