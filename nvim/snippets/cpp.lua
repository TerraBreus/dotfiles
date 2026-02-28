-- AI GENERATED CODE CAUSE I AM NOT YET CONFIDENT TO WRITE MY OWN NVIM CONFIG
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

-- Helper to repeat the class name
local function copy(args)
	return args[1][1]
end

return {
	s("canon", {
		t("class "), i(1, "ClassName"), t({ " {", "\tprivate:", "\t\t", "\tpublic:", "\t\t" }),
		-- Default Constructor
		f(copy, { 1 }), t({ "(void);", "\t\t" }),
		-- Copy Constructor
		f(copy, { 1 }), t("(const "), f(copy, { 1 }), t({ "& other);", "\t\t" }),
		-- Assignment Operator
		f(copy, { 1 }), t("& operator=(const "), f(copy, { 1 }), t({ "& other);", "\t\t" }),
		-- Destructor
		t("~"), f(copy, { 1 }), t({ "(void);"}),
		i(0),
		t({ "", "};" }),
	}),
	s("can_impl", {
		-- Constructor
		f(copy, { 1 }), t("::"), i(1, "Classname"), t({ "(void) {", "\t" }),
		i(2), 
		t({ "", "}", "", "" }),

		-- Copy Constructor
		f(copy, { 1 }), t("::"), f(copy, { 1 }), t("(const "), f(copy, { 1 }), t({ "& other) {", "\t*this = other;", "}", "", "" }),

		-- Assignment Operator
		f(copy, { 1 }), t("& "), f(copy, { 1 }), t("::operator=(const "), f(copy, { 1 }), t({ "& other) {", "\tif (this != &other) {", "\t\t" }),
		i(0),
		t({ "", "\t}", "\treturn *this;", "}", "", "" }),

		-- Destructor
		f(copy, { 1 }), t("::~"), f(copy, { 1 }), t({ "(void) {", "}", "" }),
	}),
}
