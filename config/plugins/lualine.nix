{ ... }: {
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        globalstatus = true;
        component_separators = {
          left = "|";
          right = "|";
        };
        section_separators = {
          left = "";
          right = "";
        };
      };

      sections = {
        lualine_a = [
          {
            __unkeyed-1 = "mode";
            separator.left = "";
            padding = 2;
          }
        ];
        lualine_z = [
          {
            __unkeyed-1 = "location";
            separator.right = "";
            padding = 2;
          }
        ];
      };
    };
  };
}
