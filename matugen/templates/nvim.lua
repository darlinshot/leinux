local colors = {
    background = "{{colors.background.default.hex}}",
    foreground = "{{colors.on_background.default.hex}}",

    primary = "{{colors.primary.default.hex}}",
    primary_container = "{{colors.primary_container.default.hex}}",

    secondary = "{{colors.secondary.default.hex}}",
    secondary_container = "{{colors.secondary_container.default.hex}}",

    tertiary = "{{colors.tertiary.default.hex}}",
    tertiary_container = "{{colors.tertiary_container.default.hex}}",

    error = "{{colors.error.default.hex}}",
    error_container = "{{colors.error_container.default.hex}}",

    surface = "{{colors.surface.default.hex}}",
    surface_variant = "{{colors.surface_variant.default.hex}}",

    on_surface = "{{colors.on_surface.default.hex}}",
    on_surface_variant = "{{colors.on_surface_variant.default.hex}}",

    outline = "{{colors.outline.default.hex}}",
    outline_variant = "{{colors.outline_variant.default.hex}}",
}

local highlights = {
    Normal = { fg = colors.foreground, bg = colors.background },
    Comment = { fg = colors.on_surface_variant, italic = true },

    Constant = { fg = colors.tertiary },
    String = { fg = colors.secondary },
    Character = { fg = colors.secondary },

    Number = { fg = colors.tertiary },
    Boolean = { fg = colors.tertiary },

    Identifier = { fg = colors.on_surface },
    Function = { fg = colors.primary },

    Statement = { fg = colors.primary },
    Keyword = { fg = colors.primary },

    Type = { fg = colors.tertiary },
    Structure = { fg = colors.tertiary },

    Special = { fg = colors.secondary_container },
    PreProc = { fg = colors.secondary },

    Operator = { fg = colors.on_surface_variant },
    Delimiter = { fg = colors.outline },

    Error = { fg = colors.error },
    Todo = {
	fg = colors.on_surface,
	bg = colors.primary_container,
	bold = true,
    },

    ["@variable"] = { fg = colors.on_surface },
    ["@variable.builtin"] = { fg = colors.tertiary },

    ["@function"] = { fg = colors.primary },
    ["@function.call"] = { fg = colors.primary },

    ["@keyword"] = { fg = colors.primary },
    ["@keyword.return"] = { fg = colors.primary },

    ["@type"] = { fg = colors.tertiary },
    ["@type.builtin"] = { fg = colors.tertiary },

    ["@string"] = { fg = colors.secondary },
    ["@number"] = { fg = colors.tertiary },
    ["@boolean"] = { fg = colors.tertiary },

    ["@comment"] = { fg = colors.on_surface_variant, italic = true },

    ["@operator"] = { fg = colors.on_surface_variant },
    ["@punctuation.delimiter"] = { fg = colors.outline },
}

for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
end
local colors = {
    bg = {{colors.background.default.hex}},
    fg = {{colors.on_background.default.hex}},

    primary = {{colors.primary.default.hex}},
    primary_container = {{colors.primary_container.default.hex}},

    secondary = {{colors.secondary.default.hex}},
    secondary_container = {{colors.secondary_container.default.hex}},

    tertiary = {{colors.tertiary.default.hex}},
    tertiary_container = {{colors.tertiary_container.default.hex}},

    error = {{colors.error.default.hex}},

    surface = {{colors.surface.default.hex}},
    surface_variant = {{colors.surface_variant.default.hex}},

    on_surface = {{colors.on_surface.default.hex}},
    on_surface_variant = {{colors.on_surface_variant.default.hex}},

    outline = {{colors.outline.default.hex}},
    outline_variant = {{colors.outline_variant.default.hex}},
}

-- Editor UI
vim.api.nvim_set_hl(0, Normal, {
    fg = colors.fg,
    bg = colors.bg,
})

vim.api.nvim_set_hl(0, NormalFloat, {
    fg = colors.fg,
    bg = colors.surface,
})

vim.api.nvim_set_hl(0, Comment, {
    fg = colors.on_surface_variant,
    italic = true,
})

vim.api.nvim_set_hl(0, CursorLine, {
    bg = colors.surface_variant,
})

vim.api.nvim_set_hl(0, LineNr, {
    fg = colors.outline,
})

vim.api.nvim_set_hl(0, CursorLineNr, {
    fg = colors.primary,
    bold = true,
})

vim.api.nvim_set_hl(0, Visual, {
    bg = colors.primary_container,
})

-- Syntax
vim.api.nvim_set_hl(0, Constant, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, String, {
    fg = colors.secondary,
})

vim.api.nvim_set_hl(0, Number, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, Boolean, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, Identifier, {
    fg = colors.fg,
})

vim.api.nvim_set_hl(0, Function, {
    fg = colors.primary,
})

vim.api.nvim_set_hl(0, Keyword, {
    fg = colors.primary,
})

vim.api.nvim_set_hl(0, Statement, {
    fg = colors.secondary,
})

vim.api.nvim_set_hl(0, Type, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, Operator, {
    fg = colors.on_surface_variant,
})

vim.api.nvim_set_hl(0, Delimiter, {
    fg = colors.outline,
})

vim.api.nvim_set_hl(0, Error, {
    fg = colors.error,
})

-- Treesitter
vim.api.nvim_set_hl(0, @variable, {
    fg = colors.fg,
})

vim.api.nvim_set_hl(0, @variable.builtin, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, @constant, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, @constant.builtin, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, @string, {
    fg = colors.secondary,
})

vim.api.nvim_set_hl(0, @string.escape, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, @number, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, @boolean, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, @function, {
    fg = colors.primary,
})

vim.api.nvim_set_hl(0, @function.call, {
    fg = colors.primary,
})

vim.api.nvim_set_hl(0, @function.builtin, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, @method, {
    fg = colors.primary,
})

vim.api.nvim_set_hl(0, @method.call, {
    fg = colors.primary,
})

vim.api.nvim_set_hl(0, @keyword, {
    fg = colors.primary,
})

vim.api.nvim_set_hl(0, @keyword.return, {
    fg = colors.primary,
})

vim.api.nvim_set_hl(0, @keyword.function, {
    fg = colors.primary,
})

vim.api.nvim_set_hl(0, @type, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, @type.builtin, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, @property, {
    fg = colors.secondary,
})

vim.api.nvim_set_hl(0, @parameter, {
    fg = colors.fg,
})

vim.api.nvim_set_hl(0, @operator, {
    fg = colors.on_surface_variant,
})

vim.api.nvim_set_hl(0, @punctuation.delimiter, {
    fg = colors.outline,
})

vim.api.nvim_set_hl(0, @punctuation.bracket, {
    fg = colors.outline,
})

vim.api.nvim_set_hl(0, @comment, {
    fg = colors.on_surface_variant,
    italic = true,
})

vim.api.nvim_set_hl(0, @tag, {
    fg = colors.primary,
})

vim.api.nvim_set_hl(0, @tag.attribute, {
    fg = colors.secondary,
})
-- Generated by Matugen
-- Do not edit manually.

local colors = {
    -- Base
    bg = {{colors.background.default.hex}},
    fg = {{colors.on_background.default.hex}},

    -- Main accents
    primary = {{colors.primary.default.hex}},
    secondary = {{colors.secondary.default.hex}},
    tertiary = {{colors.tertiary.default.hex}},
    error = {{colors.error.default.hex}},

    -- Accent variants
    primary_fixed = {{colors.primary_fixed.default.hex}},
    primary_fixed_dim = {{colors.primary_fixed_dim.default.hex}},

    secondary_fixed = {{colors.secondary_fixed.default.hex}},
    secondary_fixed_dim = {{colors.secondary_fixed_dim.default.hex}},

    tertiary_fixed = {{colors.tertiary_fixed.default.hex}},
    tertiary_fixed_dim = {{colors.tertiary_fixed_dim.default.hex}},

    inverse_primary = {{colors.inverse_primary.default.hex}},

    -- Containers
    primary_container = {{colors.primary_container.default.hex}},
    secondary_container = {{colors.secondary_container.default.hex}},
    tertiary_container = {{colors.tertiary_container.default.hex}},
    error_container = {{colors.error_container.default.hex}},

    -- Text / neutral
    on_surface = {{colors.on_surface.default.hex}},
    on_surface_variant = {{colors.on_surface_variant.default.hex}},

    outline = {{colors.outline.default.hex}},
    outline_variant = {{colors.outline_variant.default.hex}},

    -- Surfaces
    surface = {{colors.surface.default.hex}},
    surface_variant = {{colors.surface_variant.default.hex}},
    surface_container = {{colors.surface_container.default.hex}},
    surface_container_high = {{colors.surface_container_high.default.hex}},
    surface_container_highest = {{colors.surface_container_highest.default.hex}},

    -- On accent colors
    on_primary = {{colors.on_primary.default.hex}},
    on_secondary = {{colors.on_secondary.default.hex}},
    on_tertiary = {{colors.on_tertiary.default.hex}},
}


-- ============================================================================
-- UI
-- ============================================================================

vim.api.nvim_set_hl(0, Normal, {
    fg = colors.fg,
    bg = colors.bg,
})

vim.api.nvim_set_hl(0, NormalFloat, {
    fg = colors.fg,
    bg = colors.surface_container,
})

vim.api.nvim_set_hl(0, FloatBorder, {
    fg = colors.outline,
    bg = colors.surface_container,
})

vim.api.nvim_set_hl(0, CursorLine, {
    bg = colors.surface_container_low,
})

vim.api.nvim_set_hl(0, LineNr, {
    fg = colors.outline,
})

vim.api.nvim_set_hl(0, CursorLineNr, {
    fg = colors.primary,
    bold = true,
})

vim.api.nvim_set_hl(0, Visual, {
    bg = colors.primary_container,
})

vim.api.nvim_set_hl(0, Search, {
    fg = colors.on_primary,
    bg = colors.primary,
})

vim.api.nvim_set_hl(0, IncSearch, {
    fg = colors.on_tertiary,
    bg = colors.tertiary,
})

vim.api.nvim_set_hl(0, MatchParen, {
    fg = colors.primary,
    bold = true,
    underline = true,
})

vim.api.nvim_set_hl(0, StatusLine, {
    fg = colors.fg,
    bg = colors.surface_container,
})

vim.api.nvim_set_hl(0, StatusLineNC, {
    fg = colors.on_surface_variant,
    bg = colors.surface_container_low,
})


-- ============================================================================
-- Legacy / standard syntax groups
-- ============================================================================

vim.api.nvim_set_hl(0, Comment, {
    fg = colors.on_surface_variant,
    italic = true,
})

vim.api.nvim_set_hl(0, Constant, {
    fg = colors.secondary_fixed,
})

vim.api.nvim_set_hl(0, String, {
    fg = colors.secondary,
})

vim.api.nvim_set_hl(0, Character, {
    fg = colors.secondary,
})

vim.api.nvim_set_hl(0, Number, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, Float, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, Boolean, {
    fg = colors.tertiary_fixed,
})

vim.api.nvim_set_hl(0, Identifier, {
    fg = colors.fg,
})

vim.api.nvim_set_hl(0, Function, {
    fg = colors.primary,
})

vim.api.nvim_set_hl(0, Keyword, {
    fg = colors.primary_fixed,
})

vim.api.nvim_set_hl(0, Statement, {
    fg = colors.primary_fixed,
})

vim.api.nvim_set_hl(0, Type, {
    fg = colors.tertiary_fixed,
})

vim.api.nvim_set_hl(0, Operator, {
    fg = colors.inverse_primary,
})

vim.api.nvim_set_hl(0, Delimiter, {
    fg = colors.outline,
})

vim.api.nvim_set_hl(0, Special, {
    fg = colors.secondary_fixed_dim,
})

vim.api.nvim_set_hl(0, Error, {
    fg = colors.error,
})

vim.api.nvim_set_hl(0, Todo, {
    fg = colors.on_primary,
    bg = colors.primary,
    bold = true,
})


-- ============================================================================
-- Treesitter — Identifiers
-- ============================================================================

vim.api.nvim_set_hl(0, @variable, {
    fg = colors.fg,
})

vim.api.nvim_set_hl(0, @variable.builtin, {
    fg = colors.secondary_fixed,
})

vim.api.nvim_set_hl(0, @variable.parameter, {
    fg = colors.tertiary_fixed_dim,
})

vim.api.nvim_set_hl(0, @variable.parameter.builtin, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, @variable.member, {
    fg = colors.secondary,
})

vim.api.nvim_set_hl(0, @constant, {
    fg = colors.secondary_fixed,
})

vim.api.nvim_set_hl(0, @constant.builtin, {
    fg = colors.secondary_fixed_dim,
})

vim.api.nvim_set_hl(0, @constant.macro, {
    fg = colors.error,
})

vim.api.nvim_set_hl(0, @module, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, @module.builtin, {
    fg = colors.tertiary_fixed,
})

vim.api.nvim_set_hl(0, @label, {
    fg = colors.secondary,
})


-- ============================================================================
-- Treesitter — Literals
-- ============================================================================

vim.api.nvim_set_hl(0, @string, {
    fg = colors.secondary,
})

vim.api.nvim_set_hl(0, @string.documentation, {
    fg = colors.secondary_fixed_dim,
})

vim.api.nvim_set_hl(0, @string.regexp, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, @string.escape, {
    fg = colors.tertiary_fixed,
    bold = true,
})

vim.api.nvim_set_hl(0, @string.special, {
    fg = colors.secondary_fixed,
})

vim.api.nvim_set_hl(0, @string.special.path, {
    fg = colors.secondary_fixed,
})

vim.api.nvim_set_hl(0, @string.special.symbol, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, @string.special.url, {
    fg = colors.primary,
    underline = true,
})

vim.api.nvim_set_hl(0, @character, {
    fg = colors.secondary,
})

vim.api.nvim_set_hl(0, @character.special, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, @boolean, {
    fg = colors.tertiary_fixed,
})

vim.api.nvim_set_hl(0, @number, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, @number.float, {
    fg = colors.tertiary_fixed_dim,
})


-- ============================================================================
-- Treesitter — Types
-- ============================================================================

vim.api.nvim_set_hl(0, @type, {
    fg = colors.tertiary_fixed,
})

vim.api.nvim_set_hl(0, @type.builtin, {
    fg = colors.tertiary,
    bold = true,
})

vim.api.nvim_set_hl(0, @type.definition, {
    fg = colors.tertiary_fixed,
})

vim.api.nvim_set_hl(0, @attribute, {
    fg = colors.secondary_fixed,
})

vim.api.nvim_set_hl(0, @property, {
    fg = colors.secondary,
})


-- ============================================================================
-- Treesitter — Functions
-- ============================================================================

vim.api.nvim_set_hl(0, @function, {
    fg = colors.primary,
})

vim.api.nvim_set_hl(0, @function.call, {
    fg = colors.primary,
})

vim.api.nvim_set_hl(0, @function.builtin, {
    fg = colors.primary_fixed_dim,
})

vim.api.nvim_set_hl(0, @function.macro, {
    fg = colors.error,
})

vim.api.nvim_set_hl(0, @function.method, {
    fg = colors.primary,
})

vim.api.nvim_set_hl(0, @function.method.call, {
    fg = colors.primary,
})

vim.api.nvim_set_hl(0, @constructor, {
    fg = colors.secondary,
})

vim.api.nvim_set_hl(0, @operator, {
    fg = colors.inverse_primary,
})


-- ============================================================================
-- Treesitter — Keywords
-- ============================================================================

vim.api.nvim_set_hl(0, @keyword, {
    fg = colors.primary_fixed,
})

vim.api.nvim_set_hl(0, @keyword.modifier, {
    fg = colors.primary_fixed,
})

vim.api.nvim_set_hl(0, @keyword.type, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, @keyword.coroutine, {
    fg = colors.primary,
})

vim.api.nvim_set_hl(0, @keyword.function, {
    fg = colors.primary,
    bold = true,
})

vim.api.nvim_set_hl(0, @keyword.operator, {
    fg = colors.inverse_primary,
})

vim.api.nvim_set_hl(0, @keyword.import, {
    fg = colors.secondary_fixed,
})

vim.api.nvim_set_hl(0, @keyword.repeat, {
    fg = colors.primary_fixed,
})

vim.api.nvim_set_hl(0, @keyword.return, {
    fg = colors.primary,
    bold = true,
})

vim.api.nvim_set_hl(0, @keyword.conditional, {
    fg = colors.primary_fixed,
})

vim.api.nvim_set_hl(0, @keyword.directive, {
    fg = colors.secondary,
})

vim.api.nvim_set_hl(0, @keyword.directive.define, {
    fg = colors.secondary_fixed,
})


-- ============================================================================
-- Treesitter — Punctuation
-- ============================================================================

vim.api.nvim_set_hl(0, @punctuation.delimiter, {
    fg = colors.outline,
})

vim.api.nvim_set_hl(0, @punctuation.bracket, {
    fg = colors.on_surface_variant,
})

vim.api.nvim_set_hl(0, @punctuation.special, {
    fg = colors.secondary_fixed_dim,
})


-- ============================================================================
-- Treesitter — Comments
-- ============================================================================

vim.api.nvim_set_hl(0, @comment, {
    fg = colors.on_surface_variant,
    italic = true,
})

vim.api.nvim_set_hl(0, @comment.documentation, {
    fg = colors.on_surface_variant,
    italic = true,
})

vim.api.nvim_set_hl(0, @comment.error, {
    fg = colors.on_error,
    bg = colors.error,
    bold = true,
})

vim.api.nvim_set_hl(0, @comment.warning, {
    fg = colors.on_secondary,
    bg = colors.secondary,
    bold = true,
})

vim.api.nvim_set_hl(0, @comment.todo, {
    fg = colors.on_primary,
    bg = colors.primary,
    bold = true,
})

vim.api.nvim_set_hl(0, @comment.note, {
    fg = colors.on_tertiary,
    bg = colors.tertiary,
    bold = true,
})


-- ============================================================================
-- Treesitter — Markup
-- ============================================================================

vim.api.nvim_set_hl(0, @markup, {
    fg = colors.fg,
})

vim.api.nvim_set_hl(0, @markup.strong, {
    fg = colors.primary,
    bold = true,
})

vim.api.nvim_set_hl(0, @markup.italic, {
    fg = colors.secondary,
    italic = true,
})

vim.api.nvim_set_hl(0, @markup.strikethrough, {
    fg = colors.on_surface_variant,
    strikethrough = true,
})

vim.api.nvim_set_hl(0, @markup.heading, {
    fg = colors.primary,
    bold = true,
})

vim.api.nvim_set_hl(0, @markup.link, {
    fg = colors.secondary,
})

vim.api.nvim_set_hl(0, @markup.link.url, {
    fg = colors.primary,
    underline = true,
})

vim.api.nvim_set_hl(0, @markup.raw, {
    fg = colors.tertiary,
})

vim.api.nvim_set_hl(0, @markup.list, {
    fg = colors.secondary,
})


-- ============================================================================
-- Treesitter — Tags
-- ============================================================================

vim.api.nvim_set_hl(0, @tag, {
    fg = colors.primary,
})

vim.api.nvim_set_hl(0, @tag.builtin, {
    fg = colors.primary,
})

vim.api.nvim_set_hl(0, @tag.attribute, {
    fg = colors.secondary,
})

vim.api.nvim_set_hl(0, @tag.delimiter, {
    fg = colors.tertiary,
})


-- ============================================================================
-- Errors
-- ============================================================================

vim.api.nvim_set_hl(0, @error, {
    fg = colors.error,
})
