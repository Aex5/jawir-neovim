local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
	-- Snippet untuk membuat console.log
	s("clg", {
		t("console.log("),
		i(1, "msg"),
		t(");"),
	}),
	-- Snippet untuk membuat fungsi
	s("fn", {
		t("function "),
		i(1, "name"),
		t("("),
		i(2, "params"),
		t(") {"),
		t({ "", "\t" }),
		i(3, "// body"),
		t({ "", "}" }),
	}),

	s("div", {
		t("<div>"),
		i(0),
		t("</div>"),
	}),

	-- Snippet for <h1>
	s("h1", {
		t("<h1>"),
		i(1, "Heading"),
		t("</h1>"),
	}),

	-- Snippet for <p>
	s("p", {
		t("<p>"),
		i(1, "Paragraph"),
		t("</p>"),
	}),

	-- Snippet for <a>
	s("link", {
		t('<a href="'),
		i(1, "URL"),
		t('">'),
		i(2, "Link Text"),
		t("</a>"),
	}),

	-- Snippet for <img>
	s("img", {
		t('<img src="'),
		i(1, "Image URL"),
		t('" alt="'),
		i(2, "Description"),
		t('" />'),
	}),

	-- Snippet for <ul> and <li>
	s("ul", {
		t("<ul>"),
		i(0),
		t("</ul>"),
	}),

	-- Snippet for <form>
	s("form", {
		t('<form action="'),
		i(1, "Submit URL"),
		t('" method="'),
		i(2, "GET/POST"),
		t('">'),
		i(0), -- Field content
		t("</form>"),
	}),

	-- Snippet for <input>
	s("input", {
		t('<input type="'),
		i(1, "text"),
		t('" name="'),
		i(2, "name"),
		t('" placeholder="'),
		i(3, "Placeholder"),
		t('" />'),
	}),

	-- Snippet for <button>
	s("button", {
		t('<button type="'),
		i(1, "button"),
		t('">'),
		i(2, "Button Text"),
		t("</button>"),
	}),

	-- Snippet for JSX <Fragment>
	s("frag", {
		t("<>"),
		i(0),
		t("</>"),
	}),

	-- Snippet for a React functional component
	s("rfc", {
		t("import React from 'react';", "\n\n"),
		t("const "),
		i(1, "ComponentName"),
		t(" = () => {"),
		t({ "", "  return (" }),
		i(0),
		t({ "", "  );", "};", "", "export default " }),
		i(1, "ComponentName"),
		t(";"),
	}),
}
