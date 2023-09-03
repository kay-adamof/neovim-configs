return {
  -- x = {
  --   ["f"] = { 'y/\\V<C-R>"<CR>' },
  --   ["F"] = { 'y?\\V<C-R>"<CR>' },
  --   ["J"] = { "<cmd>STSSelectNextSiblingNode<cr>", desc = "Surfer select next sibs" },
  --   ["K"] = { "<cmd>STSSelectPrevSiblingNode<cr>", desc = "Surfer select prev sibs" },
  --   ["H"] = { "<cmd>STSSelectParentNode<cr>", desc = "Surfer select parent node" },
  --   ["L"] = { "<cmd>STSSelectChildNode<cr>", desc = "Surfer select child node" },
  --   ["<A-j>"] = { "<cmd>STSSwapNextVisual<cr>", desc = "Surfer swap next" },
  --   ["<A-k>"] = { "<cmd>STSSwapPrevVisual<cr>", desc = "Surfer swap prev" },
  -- },
  n = {
    -- Unmap
    ["<C-Down>"] = false,
    ["<C-Left>"] = false,
    ["<C-Right>"] = false,
    ["<C-Up>"] = false,
    -- DAP
    ["<leader>xt"] = {
      function() require("dap").toggle_breakpoint() end,
      desc = "Toggle Breakpoint",
    },
    ["<leader>xb"] = {
      function() require("dap").set_breakpoint(vim.fn.input "Breakpoints condition: ") end,
      desc = "Breakpoint with condition",
    },
    ["<leader>xC"] = {
      function() require("dap").clear_breakpoints() end,
      desc = "Clear Breakpoints",
    },
    ["<leader>xc"] = {
      function() require("dap").continue() end,
      desc = "Continue",
    },
    ["<leader>xi"] = {
      function() require("dap").step_into() end,
      desc = "Step Into",
    },
    ["<leader>xo"] = {
      function() require("dap").step_over() end,
      desc = "Step Over",
    },
    ["<leader>xq"] = {
      function()
        require("dap").close()
        require("dapui").close()
      end,
      desc = "Close Session",
    },
    ["<leader>xQ"] = {
      function()
        require("dap").terminate()
        require("dapui").close()
      end,
      desc = "Terminate",
    },
    ["<leader>xu"] = {
      function() require("dapui").toggle() end,
      desc = "Toggle Debugger UI",
    },

    -- telescope
    ["<leader>fC"] = {
      ":Telescope cheat fd<cr>",
      desc = "Cheat",
    },
    ["<leader>fy"] = {
      function() require("telescope").extensions.neoclip.default {} end,
      desc = "Clip",
    },
    ["<leader>fdc"] = {
      function() require("telescope").extensions.dap.commands {} end,
      desc = "Commands",
    },
    ["<leader>fdC"] = {
      function() require("telescope").extensions.dap.configurations {} end,
      desc = "Configurations",
    },
    ["<leader>fdb"] = {
      function() require("telescope").extensions.dap.list_breakpoints {} end,
      desc = "Breakpoints",
    },
    ["<leader>fdv"] = {
      function() require("telescope").extensions.dap.variables {} end,
      desc = "Variables",
    },
    ["<leader>fdf"] = {
      function() require("telescope").extensions.dap.frames {} end,
      desc = "Frames",
    },
    ["<leader>fz"] = {
      function() require("telescope").extensions.zoxide.list {} end,
      desc = "Zoxide",
    },
    ["<leader>pp"] = {
      function() require("telescope").extensions.packer.packer() end,
      desc = "Packer Search",
    },

    -- Syntax Tree Surfer
    ["gv"] = {
      function() require("syntax-tree-surfer").targeted_jump { "variable_declaration" } end,
      desc = "Go to variable_declaration",
    },
    ["gfu"] = {
      function() require("syntax-tree-surfer").targeted_jump { "function", "arrrow_function", "function_definition" } end,
      desc = "Go to function_definition",
    },
    ["gif"] = {
      function() require("syntax-tree-surfer").targeted_jump { "if_statement" } end,
      desc = "Go to if_statement",
    },
    ["gfo"] = {
      function() require("syntax-tree-surfer").targeted_jump { "for_statement" } end,
      desc = "Go to for_statement",
    },
    ["gj"] = {
      function()
        require("syntax-tree-surfer").targeted_jump {
          "function",
          "if_statement",
          "else_clause",
          "else_statement",
          "elseif_statement",
          "for_statement",
          "while_statement",
          "switch_statement",
        }
      end,
      desc = "test",
    },
    ["<c-3>"] = {
      function() require("syntax-tree-surfer").move("n", true) end,
      desc = "Swap Up",
    },
    ["<c-2>"] = {
      function() require("syntax-tree-surfer").move("n", false) end,
      desc = "Swap Down",
    },
    ["<c-4>"] = {
      function() require("syntax-tree-surfer").surf("next", "normal", true) end,
      desc = "Swap Next",
    },
    ["<c-5>"] = {
      function() require("syntax-tree-surfer").surf("prev", "normal", true) end,
      desc = "Swap Previous",
    },
    ["vx"] = {
      function() require("syntax-tree-surfer").select() end,
      desc = "Select Master Node",
    },
    ["vn"] = {
      function() require("syntax-tree-surfer").select_current_node() end,
      desc = "Select Current Node",
    },

    -- Resize a Window
    ["<C-8>"] = { "<cmd>resize -5<CR>", desc = "Resize split up" },
    ["<C-6>"] = { "<cmd>vertical resize +5<CR>", desc = "Resize split right" },
    ["<C-7>"] = { "<cmd>resize +5<CR>", desc = "Resize split down" },
    ["<C-9>"] = { "<cmd>vertical resize -5<CR>", desc = "Resize split left" },

    [";gc"] = {
      "<cmd>lua GitAddandCommit()<cr>",
      desc = "git add and commit",
    },
    [";gh"] = {
      "<cmd>lua GitCommitHunk()<cr>",
      desc = "git commit hunk",
    },
    [";ga"] = {
      "<cmd>lua GitCommitAddAll()<cr>",
      desc = "git commit all",
    },
    ["<leader>ng"] = {
      "<cmd>Neotree focus git_status left reveal_force_cwd=true<cr>",
      desc = "Open Neotree Git Status Tab",
    },
    ["<leader>nb"] = {
      "<cmd>Neotree focus buffers left reveal_force_cwd=true<cr>",
      desc = "Open Neotree Bufs Tab",
    },
    ["<leader>fu"] = {
      -- maps.n["<leader>sb"] = { function() require("telescope.builtin").git_branches() end, desc = "Git branches" }
      "<cmd>Telescope current_buffer_fuzzy_find<cr>",
      desc = "FuzzyFind in current buffer",
    },
    [";tt"] = {
      function()
        local Terminal = require("toggleterm.terminal").Terminal
        local figterm = Terminal:new {
          dir = "git_dir",
          cmd = "figterm",
          hidden = true,
          direction = "horizontal",
        }
        return figterm:toggle()
      end,
      desc = "ToggleTerm Fig",
    },
    [";tc"] = {
      function()
        local Terminal = require("toggleterm.terminal").Terminal
        local figterm = Terminal:new {
          dir = "%:p:h",
          cmd = "figterm",
          hidden = true,
          direction = "horizontal",
        }
        return figterm:toggle()
      end,
      desc = "ToggleTerm Fig in CWD",
    },
    [";tn"] = {
      function()
        local Terminal = require("toggleterm.terminal").Terminal
        local figterm = Terminal:new {
          dir = "git_dir",
          cmd = "nnn",
          hidden = true,
          direction = "float",
        }
        return figterm:toggle()
      end,
      desc = "ToggleTerm NNN",
    },
    ["<leader>td"] = {
      function() astronvim.toggle_term_cmd "lazydocker" end,
      desc = "ToggleTerm lazydocker",
    },
    [";f"] = {
      "<cmd>Telescope builtin<cr>",
      desc = "Find by Telescope",
    },
    ["<leader>rr"] = {
      "<Plug>RestNvim",
      desc = "Run rest-nvim under the current cursor position",
    },
    [";l"] = {
      "<cmd>lua require('luasnip.loaders').edit_snippet_files()<CR>",
      desc = "Open snippet file",
    },
  },
}
