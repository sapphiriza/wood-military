local modutil = require("modutil")

data:extend({
  -- add wood darts magazine for vanilla pistol/smg
  {
    type = "string-setting",
    name = "wood-military-smg-ammo",
    setting_type = "startup",
    allowed_values = {"item", "recipe", "no"},
    default_value = "item",
    order = "a[ammo]-a[smg]"
  },
  -- add wood shotgun shell for vanilla shotguns
  {
    type = "string-setting",
    name = "wood-military-shotgun-ammo",
    setting_type = "startup",
    allowed_values = {"item", "recipe", "no"},
    default_value = "item",
    order = "a[ammo]-b[shotgun]"
  },
  -- how much wood each ammo item costs
  {
    type = "int-setting",
    name = "wood-military-ammo-cost",
    setting_type = "startup",
    minimum_value = 1,
    default_value = 4,
    order = "b[ammo-details]-a[cost]"
  },
  -- add copper plate to wood ammo recipes to represent bullet casings
  {
    type = "bool-setting",
    name = "wood-military-ammo-casing",
    setting_type = "startup",
    default_value = true,
    order = "b[ammo-details]-b[casing]"
  },
  -- increase damage of non-wood ammo for increased catharsis
  {
    type = "bool-setting",
    name = "wood-military-damage-buff",
    setting_type = "startup",
    default_value = true,
    order = "b[ammo-details]-c[buff]"
  }
})

if modutil.sniper_rifle then
  data:extend({
    -- add crossbow bolts magazine for snipers
    {
      type = "string-setting",
      name = "wood-military-sniper-ammo",
      setting_type = "startup",
      allowed_values = {"item", "recipe", "no"},
      default_value = "item",
      order = "a[ammo]-c[sniper]"
    }
  })
end
