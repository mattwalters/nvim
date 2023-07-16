local all_symbols = {
  "File",
  "Module",
  "Namespace",
  "Package",
  "Class",
  "Method",
  "Property",
  "Field",
  "Constructor",
  "Enum",
  "Interface",
  "Function",
  "Variable",
  "Constant",
  "String",
  "Number",
  "Boolean",
  "Array",
  "Object",
  "Key",
  "Null",
  "EnumMember",
  "Struct",
  "Event",
  "Operator",
  "TypeParameter",
}

return {
  "stevearc/aerial.nvim",
  opts = {
    open_automatic = true,
    manage_folds = true,
    link_folds_to_tree = true,
    link_tree_to_folds = true,
    highlight_on_hover = true,
    filter_kind = {
      ["_"] = all_symbols,
    },
  },
}