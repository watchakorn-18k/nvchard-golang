return {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    init = function()
    end,
    config = function(_, opts)
      table.insert(opts.sources, 2, { name = "codeium" })
    end,
    dependencies = {
      -- AI Autocomplete
      {
        "Exafunction/codeium.nvim",
        opts = {},
      },
    },
  }