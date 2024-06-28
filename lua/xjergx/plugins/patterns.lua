return {
				{
  "echasnovski/mini.ai",
  version = false, -- wait till new 0.7.0 release to put it back on semver
  event = "VeryLazy",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",

  },
  opts = {
    n_lines = 500,
    search_method = "cover_or_next",
  },
  config = function(_, opts)
    require("mini.ai").setup(opts)
  end,
},

{
  "echasnovski/mini.bracketed",
  version = false, -- wait till new 0.7.0 release to put it back on semver
  event = "VeryLazy",
  config = function(_, opts)
    require("mini.bracketed").setup(opts)
  end,
},

{
  "echasnovski/mini.pairs",
  version = false, -- wait till new 0.7.0 release to put it back on semver
  event = "VeryLazy",
  config = function(_, opts)
    require("mini.pairs").setup(opts)
  end,
},

{
  "echasnovski/mini.surround",
  version = false, -- wait till new 0.7.0 release to put it back on semver
  event = "VeryLazy",
  config = function(_, opts)
    require("mini.surround").setup(opts)
  end,
},

{
  "echasnovski/mini.comment",
  version = false, -- wait till new 0.7.0 release to put it back on semver
  event = "VeryLazy",
  config = function(_, opts)
    require("mini.comment").setup(opts)
  end,
},

{
  "echasnovski/mini.cursorword",
  version = false, -- wait till new 0.7.0 release to put it back on semver
  event = "VeryLazy",
  config = function(_, opts)
    require("mini.cursorword").setup(opts)
  end,
},

{
  "echasnovski/mini.indentscope",
  version = false, -- wait till new 0.7.0 release to put it back on semver
  event = "VeryLazy",
  config = function(_, opts)
    require("mini.indentscope").setup(opts)
  end,
},

{
  "echasnovski/mini.fuzzy",
  version = false, -- wait till new 0.7.0 release to put it back on semver
  event = "VeryLazy",
  config = function(_, opts)
    require("mini.fuzzy").setup(opts)
  end,
},

{
  "echasnovski/mini.jump",
  version = false, -- wait till new 0.7.0 release to put it back on semver
  event = "VeryLazy",
  config = function(_, opts)
    require("mini.jump").setup(opts)
  end,
},

{
  "echasnovski/mini.jump2d",
  version = false, -- wait till new 0.7.0 release to put it back on semver
  event = "VeryLazy",
  config = function(_, opts)
    require("mini.jump2d").setup(opts)
  end,
},
{
  "echasnovski/mini.hipatterns"
}
}
