data:extend({
  {
    type = "int-setting",
    name = "Construction-robots-count",
    order = "aa",
    setting_type = "startup",
    default_value = 100,
  },
  {
	type = "int-setting",
	name = "Repair-tool-count",
	order = "aba",
	setting_type = "startup",
	default_value = 100,
  },
  {
	type = "string-setting",
	name = "Repair-tool-type",
	order = "abb",
	setting_type = "startup",
	default_value = "titanium-repair-tool",
	allowed_values = {"copper-repair-tool","bronze-repair-tool","iron-repair-tool","steel-repair-tool","titanium-repair-tool",},
  },
  {
	type = "bool-setting",
	name = "Use-steambots",
	order = "ac",
	setting_type = "startup",
	default_value = true,
  }, 
  {
    type = "int-setting",
    name = "Uranium-fuel-count",
    order = "ba",
    setting_type = "startup",
    default_value = 44,
  },
  {
	type = "bool-setting",
	name = "Monowheel",
	order = "ca",
	setting_type = "startup",
	default_value = true,
  },
  {
    type = "int-setting",
    name = "Wheel-fuel-count",
    order = "cb",
    setting_type = "startup",
    default_value = 11,
  },
  {
	type = "string-setting",
	name = "Wheel-fuel-type",
	order = "cc",
	setting_type = "startup",
	default_value = "nuclear-fuel",
	allowed_values = {"nuclear-fuel","rocket-fuel"},
  }
})