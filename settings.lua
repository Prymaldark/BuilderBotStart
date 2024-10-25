data:extend({
    {
        type = "int-setting",
        name = "starting-robot-count",
        setting_type = "runtime-global",
        default_value = 50,
        minimum_value = 50,
        maximum_value = 1000,
        order = "01"
    },
    {
        type = "int-setting",
        name = "faster-robots",
        setting_type = "runtime-global",
        default_value = 0,
        minimum_value = 0,
        maximum_value = 6,
        order = "02"
    },
    {
        type = "string-setting",
		name = "item-quality",
		setting_type = "runtime-global",
        allow_blank = false,
        default_value = "normal",
		allowed_values = {"normal","uncommon","rare","epic","legendary"},
        order = "03"
    }
})