{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        globalstatus = true;
        component_separators = "";
        section_separators = {
          left = "";
          right = "";
        };
      };

      sections = {
        lualine_a = [{
          __unkeyed-1 = "mode";
          separator.left = "";
        }];
        lualine_y = [ "progress" "location" ];
        lualine_z = [{
          __unkeyed-1 = ''" " .. os.date("%R")'';
          separator.right = "";
          # padding = 2;
        }];
      };
    };
  };
}
