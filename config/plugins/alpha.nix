{
  plugins.alpha = {
    enable = true;
    theme = null;
    layout =
      let
        padding = val: {
          type = "padding";
          inherit val;
        };
      in
      [
        (padding 8)
        {
          opts = {
            hl = "AlphaHeader";
            position = "center";
          };
          type = "text";
          val = [
            ".------. .------."
            "|K.--. | |J.--. |"
            "| ://: | | :(): |"
            "| ://: | | ()() |"
            "| '--'K| | '--'J|"
            "`------' `------'"
          ];
        }
      ];
  };
}
