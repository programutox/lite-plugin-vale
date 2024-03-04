-- mod-version:3

local syntax = require "core.syntax"

syntax.add {
  files = { "%.vale$" },
  comment = "//",
  -- Just discovered that without patterns you can't open the files.
  patterns = {
    { pattern = "//.*\n", type = "comment" },
    { pattern = "%d+", type = "number" },
    { pattern = "%u[%w_]+", type = "keyword2" },
    { pattern = "[%a_][%w_]*%f[(<]", type = "function" },
    { pattern = "%u%f[%s%p]", type = "literal" },
    { pattern = "[%a_][%w_]*", type = "symbol" },
    { pattern = { '"', '"', '\\' }, type = "string" },
    { pattern = { '"', '"' }, type = "string" },
    { pattern = "[&<>%+-%*/=#%[%]!]+", type = "operator" },
  },
  symbols = {
    ["import"] = "keyword",
    ["exported"] = "keyword",
    ["func"] = "keyword",
    ["abstract"] = "keyword",
    ["where"] = "keyword",
    ["set"] = "keyword",

    ["if"] = "keyword",
    ["else"] = "keyword",
    ["foreach"] = "keyword",
    ["while"] = "keyword",
    ["in"] = "keyword",
    ["return"] = "keyword",
    ["break"] = "keyword",
    ["continue"] = "keyword",
    ["and"] = "keyword",
    ["or"] = "keyword",
    ["not"] = "keyword",

    -- Struct related keywords
    ["struct"] = "keyword",
    ["imm"] = "keyword",
    ["interface"] = "keyword",
    ["virtual"] = "keyword",

    -- Types
    ["str"] = "keyword2",
    ["bool"] = "keyword2",
    ["int"] = "keyword2",
    ["void"] = "keyword2",

    ["true"] = "literal",
    ["false"] = "literal",
  },
}
