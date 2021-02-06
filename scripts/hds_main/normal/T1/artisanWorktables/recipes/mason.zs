#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.artisanWorktables.awFunctions.MRLTOreProcessor;

if(!isInvalid){

val ptm5 as IItemStack = <pyrotech:material:5>;

MRLTOreProcessor("copper", <ore:clumpCopper>.firstItem*4, <ore:crushedOreCopper>);
MRLTOreProcessor("tin", <ore:clumpTin>.firstItem*4, <ore:crushedOreTin>);
//ore processing
RecipeBuilder.get("mason")
  .setShapeless([<ore:rhombusYellow>])
  .addTool(<ore:artisansBurner>, 5)
  .addOutput(<ore:coal>.firstItem)
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<ore:crushedOreLead>])
  .addTool(<ore:artisansSifter>, 8)
  .addOutput(<ore:orePurifiedLead>.firstItem)
  .setExtraOutputOne(<ore:rock>.firstItem, 1.0)
  .setExtraOutputTwo(<ore:rock>.firstItem, 0.5)
  .setExtraOutputThree(<ore:rock>.firstItem*2, 0.18)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dustBronze>],
    [<ore:dustBronze>],
    [<pyrotech:faucet_stone>]])
  .addTool(<ore:artisansBurner>, 150)
  .addOutput(<pyrotech:faucet_brick>)
  .create();

//stuff
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dustTinyBronze>, <ore:dustTinyBronze>, <ore:dustTinyBronze>],
    [<ore:dustTinyBronze>, <pyrotech:material:16>, <ore:dustTinyBronze>],
    [<ore:dustTinyBronze>, <ore:dustTinyBronze>, <ore:dustTinyBronze>]])
  .addTool(<ore:artisansBurner>, 30)
  .addOutput(ptm5)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [ptm5, ptm5, ptm5],
    [ptm5, null, ptm5],
    [ptm5, null, ptm5]])
  .addTool(<ore:artisansTrowel>, 75)
  .addOutput(<tconstruct:casting>)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [ptm5, null, ptm5],
    [ptm5, null, ptm5],
    [ptm5, ptm5, ptm5]])
  .addTool(<ore:artisansTrowel>, 75)
  .addOutput(<tconstruct:casting:1>)
  .create();
}

RecipeBuilder.get("mason")
  .setShapeless([<contenttweaker:rhombus>])
  .addTool(<contenttweaker:sandpaper>, 1)
  .addOutput(<contenttweaker:polished_rhombus>)
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<contenttweaker:square>])
  .addTool(<contenttweaker:sandpaper>, 1)
  .addOutput(<contenttweaker:polished_square>)
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<contenttweaker:spherical>])
  .addTool(<contenttweaker:sandpaper>, 1)
  .addOutput(<contenttweaker:polished_spherical>)
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<ore:clusterGlimmerite>])
  .addTool(<contenttweaker:sandpaper>, 1)
  .addOutput(<ore:gemChippedGlimmerite>.firstItem, 5)
  .addOutput(<ore:gemFlawedGlimmerite>.firstItem, 3)
  .addOutput(<ore:gemFlawlessGlimmerite>.firstItem, 1)
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<contenttweaker:square>])
  .addTool(<contenttweaker:sandpaper>, 1)
  .addOutput(<contenttweaker:polished_square>)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<pyrotech:material:12>, <pyrotech:material:12>, <pyrotech:material:12>],
    [<pyrotech:stone_bricks>, <pyrotech:material:5>, <pyrotech:stone_bricks>],
    [<pyrotech:material:5>, <pyrotech:stone_bricks>, <pyrotech:material:5>]])
  .addTool(<ore:artisansTrowel>, 10)
  .setFluid(<liquid:limewater>*1000)
  .addOutput(<artisanworkstumps:stone_basin>)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<astralsorcery:blockmarbleslab>, <ore:plateIron>, <astralsorcery:blockmarbleslab>],
    [<ore:plateIron>, <ore:dustGlimmerite>, <ore:plateIron>],
    [<astralsorcery:blockmarbleslab>, <ore:plateIron>, <astralsorcery:blockmarbleslab>]])
  .addTool(<ore:artisansTrowel>, 10)
  .addOutput(<contenttweaker:starlight_frame>)
  .create();