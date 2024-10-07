{
  plugins.bufferline = {
    enable = true;
    settings = {
      highlights = { background = { bg = "#181825"; }; };
      options = {
        auto_toggle_bufferline = true;
        # separator_style = [ "" "" ];
        separator_style = [ "" "" ];
        show_buffer_close_icons = false;
        # indicator = {
        #   icon = "";
        #   style = "icon";
        # };
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
