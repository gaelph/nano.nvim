---@meta

---@alias Variant "dark" | "light"

---@alias Plugin fun(variant: Variant): table<string, Highlight>

---@class Highlight
---@field fg? string|integer
---@field ctermfg? string
---@field bg? string|integer
---@field ctermbg? string
---@field sp? string|integer
---@field bold? boolean
---@field italic? boolean
---@field underline? boolean
---@field undercurl? boolean
---@field link? string

---@class Palette
---@field faces table<string, Highlight>
---@field colors table<string, string>
---

---@class Colors
---@field fg string
---@field bg string
---@field subtle string
---@field critical string
---@field salient string
---@field strong string
---@field popout string
---@field highlight string
---@field faded string
---@field success string
---@field color_0 string
---@field color_1 string
---@field color_2 string
---@field color_3 string
---@field color_4 string
---@field color_5 string
---@field color_6 string
---@field color_7 string
---@field color_8 string
---@field color_9 string
---@field color_10 string
---@field color_11 string
---@field color_12 string
---@field color_13 string
---@field color_14 string
---@field color_15 string
---@field cterm CTermColors
---
---@class CTermColors
---@field fg string
---@field bg string
---@field subtle string
---@field critical string
---@field salient string
---@field strong string
---@field popout string
---@field highlight string
---@field faded string
---@field success string
---
---@class Faces
---@field none Highlight
---@field normal Highlight
---@field cursor Highlight
---@field mouse Highlight
---@field highlight Highlight
---@field subtle Highlight
---@field subtle_i Highlight
---@field faded Highlight
---@field faded_i Highlight
---@field default Highlight
---@field default_i Highlight
---@field salient Highlight
---@field salient_i Highlight
---@field strong Highlight
---@field strong_i Highlight
---@field popout Highlight
---@field popout_i Highlight
---@field critical Highlight
---@field critical_i Highlight
---@field success Highlight
---@field success_i Highlight
---
