local ai = require("mini.ai")
local gen_spec = ai.gen_spec
local extra_spec = require("mini.extra").gen_ai_spec

ai.setup({
  n_lines = 500,
  custom_textobjects = {
    f = gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }),
    c = gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }),
    o = gen_spec.treesitter({
      a = { "@conditional.outer", "@loop.outer" },
      i = { "@conditional.inner", "@loop.inner" },
    }),
    a = gen_spec.treesitter({ a = "@parameter.outer", i = "@parameter.inner" }),
    C = gen_spec.treesitter({ a = "@comment.outer", i = "@comment.outer" }),
    t = { "<([%p%w]-)%f[^<%w][^<>]->.-</%1>", "^<.->().*()</[^/]->$" },
    d = { "%f[%d]%d+" },
    i = extra_spec.indent(),
    g = extra_spec.buffer(),
  },
  mappings = {
    around = "a",
    inside = "i",
    around_next = "an",
    inside_next = "in",
    around_last = "al",
    inside_last = "il",
    goto_left = "g[",
    goto_right = "g]",
  },
})
