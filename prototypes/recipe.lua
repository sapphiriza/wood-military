local Recipe = require("__stdlib__.stdlib.data.recipe")
local modutil = require("modutil")

local wood_cost = settings.startup["wood-military-ammo-cost"].value
local ammo_casing = settings.startup["wood-military-ammo-casing"].value

if settings.startup["wood-military-smg-ammo"].value == "item" then
  data:extend({
    {
      type = "recipe",
      name = "wood-darts-magazine",
      energy_required = 1,
      ingredients = {{"wood", wood_cost}},
      result = "wood-darts-magazine",
      result_count = 1
    }
  })

  if ammo_casing then
    Recipe("wood-darts-magazine"):add_ingredient({"copper-plate", 1}, true)
  end
end

if settings.startup["wood-military-shotgun-ammo"].value == "item" then
  data:extend({
    {
      type = "recipe",
      name = "wood-shotgun-shell",
      enabled = false,
      energy_required = 1,
      ingredients = {modutil.growtorio and {"woodchips", 2*wood_cost} or {"wood", wood_cost}},
      result = "wood-shotgun-shell",
      result_count = 1
    }
  })

  if ammo_casing then
    Recipe("wood-shotgun-shell"):add_ingredient({"copper-plate", 1}, true)
  end
end

if modutil.sniper_rifle and settings.startup["wood-military-sniper-ammo"].value == "item" then
  data:extend({
    {
      type = "recipe",
      name = "wood-bolts-magazine",
      enabled = false,
      energy_required = 1,
      ingredients = {{"wood", 2*wood_cost}, {"iron-stick", 1}},
      result = "wood-bolts-magazine",
      result_count = 1
    }
  })

  if ammo_casing then
    Recipe("wood-bolts-magazine"):add_ingredient({"copper-plate", 1}, true)
  end
end
