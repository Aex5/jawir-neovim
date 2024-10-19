local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
    -- php tag
    s("tagp", {
        t("<?php "), i(1), t(" ?>")
    }),

  -- pr function
   s("per", {
        t("pr("), i(1), t(");")
    })
}

