minetest.register_node("green_screen:greenscreen", {
  description = "Green Screen Background",
  tiles = {"green_screen.png"},
  is_ground_content = true,
  paramtype = "light",
  drawtype = "glasslike",
-- light_source = 5,
  sunlight_propagates = true,
  groups = {cracky=3,oddly_breakable_by_hand=3},
  drop = 'green_screen:greenscreen',
})

minetest.register_alias("greenscreen", "green_screen:greenscreen")
local bloque=""
if minetest.get_modpath("mcl_wool") then
  bloque="mcl_wool:green"
else
  bloque="wool:green"
end
minetest.register_craft({
    type = "cooking",
    burntime = 2,
    output = "green_screen:greenscreen 10",
    recipe = bloque,
})
