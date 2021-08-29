import crafttweaker.api.mods.Mods;

println('Initializing Mekanism recipes');

println('>  removing metallurgic_infuser recipes');

<recipetype:mekanism:metallurgic_infusing>.removeRecipe(<tag:items:mekanism:alloys/atomic>);
<recipetype:mekanism:metallurgic_infusing>.removeRecipe(<tag:items:mekanism:alloys/reinforced>);
<recipetype:mekanism:metallurgic_infusing>.removeRecipe(<item:mekanism:basic_control_circuit>);

if loadedMods.isModLoaded("jeitweaker") {
  println('>  Mod JEI Tweaker Found !');
  println('>  >   hiding some recipes');
  mods.jei.JEI.hideRecipe("mekanism:metallurgic_infuser", "mekanism:metallurgic_infusing/alloy/atomic");
  mods.jei.JEI.hideRecipe("mekanism:metallurgic_infuser", "mekanism:metallurgic_infusing/alloy/reinforced");
  mods.jei.JEI.hideRecipe("mekanism:metallurgic_infuser", "mekanism:control_circuit/basic");
}

println('>  adding metallurgic_infuser recipes');
# Adding new recipes for metallurgic_infuser

// New infusing recipes
<recipetype:mekanism:metallurgic_infusing>.addJSONRecipe('alloy_atomic', {"itemInput": {"ingredient": {"tag": "mekanism:alloys/reinforced"}}, "infusionInput": {"amount": 10, "tag": "mekanism:refined_obsidian"}, "output": {"item": "mekanism:alloy_atomic"}});
<recipetype:mekanism:metallurgic_infusing>.addJSONRecipe('alloy_reinforced', {"itemInput": {"ingredient": {"tag": "mekanism:alloys/infused"}}, "infusionInput": {"amount": 10, "tag": "mekanism:diamond"}, "output": {"item": "mekanism:alloy_reinforced"}});
<recipetype:mekanism:metallurgic_infusing>.addJSONRecipe('basic_control_circuit', {"itemInput": {"ingredient": {"tag": "forge:ingots/osmium"}}, "infusionInput": {"amount": 10, "tag": "mekanism:redstone"}, "output": {"item": "mekanism:basic_control_circuit"}});
