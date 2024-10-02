{ pkgs, ... }: {
  plugins.dap = {
    enable = true;
    signs = {
      dapBreakpoint = {
        text = "●";
        texthl = "DapBreakpoint";
      };
      dapBreakpointCondition = {
        text = "●";
        texthl = "DapBreakpointCondition";
      };
      dapLogPoint = {
        text = "◆";
        texthl = "DapLogPoint";
      };
    };
    adapters = {
      executables = {
        coreclr = {
          command = "${pkgs.netcoredbg}/bin/netcoredbg";
          args = [ "--interpreter=vscode" ];
        };

        netcoredbg = {
          command = "${pkgs.netcoredbg}/bin/netcoredbg";
          args = [ "--interpreter=vscode" ];
        };
      };
    };
    extensions = { dap-ui.enable = true; };
    configurations = {
      java = [{
        type = "java";
        request = "launch";
        name = "Debug (Attach) - Remote";
        hostName = "127.0.0.1";
        port = 5005;
      }];
      cs = [{
        name = "launch - netcoredbg";
        type = "coreclr";
        request = "launch";
        program = {
          __raw = ''
            function()
               return vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/bin/Debug/', 'file')
            end'';
        };
      }];
    };
  };
}
