#priority -600
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes.addShaped;

static stageName as string = "灰烬学"; 


//有序合成
static shapedRecipes as IIngredient[][][IItemStack] = {

    <embers:ember_injector> : [
        [<embers:ingot_silver>,null,<embers:ingot_silver>],
        [<ore:plateDawnstone>,<embers:flame_barrier>,<ore:plateDawnstone>],
        [<embers:block_caminite_brick_slab>,<embers:wildfire_core>,<embers:block_caminite_brick_slab>]
    ],
    <embers:boiler> : [
        [<ore:ingotCopper>,<ore:ingotCopper>,<ore:ingotCopper>],
        [<ore:ingotCopper>,<embers:ember_cluster>,<ore:ingotCopper>],
        [<ore:plateIron>,<embers:mech_core>,<ore:plateIron>]
    ],
    <embers:crystal_cell> : [
        [null,<embers:caster_orb>,null],
        [<ore:plateDawnstone>,<contenttweaker:advanced_ember_capacitor>,<ore:plateDawnstone>],
        [<embers:block_caminite_brick>,<embers:flame_barrier>,<embers:block_caminite_brick>]
    ],
    <embers:caster_orb> : [
        [<ore:plateDawnstone>,<embers:ember_cluster>,<ore:plateDawnstone>],
        [<ore:plateDawnstone>,null,<ore:plateDawnstone>],
        [null,<ore:ingotDawnstone>,null]
    ],
    <embers:glimmer_lamp> : [
        [<ore:plateIron>,<ore:ingotIron>,<ore:plateIron>],
        [<minecraft:iron_bars>,<embers:glimmer_shard>,<minecraft:iron_bars>],
        [<ore:plateIron>,<ore:ingotIron>,<ore:plateIron>]
    ],
    <embers:ember_relay>*2 : [
        [null,<ore:ingotCopper>,null],
        [<ore:ingotCopper>,null,<ore:ingotCopper>],
        [null,<ore:plateIron>,null]
    ],
    <embers:inferno_forge> : [
        [<embers:inferno_forge>,<minecraft:iron_trapdoor>,<embers:inferno_forge>],
        [<ore:ingotCopper>,null,<ore:ingotCopper>],
        [<embers:block_caminite_brick>,<embers:wildfire_core>,<embers:block_caminite_brick>]
    ],
    <embers:staff_ember> : [
        [<ore:ingotSilver>,<embers:caster_orb>,<ore:ingotSilver>],
        [null,<ore:stickWood>,null],
        [<ore:plateDawnstone>,<contenttweaker:basic_ember_capacitor>,<ore:plateDawnstone>]
    ],
    <item:modularmachinery:blockcasing:0>*2 : [
        [null,<item:modularmachinery:itemmodularium>,null],
        [<item:modularmachinery:itemmodularium>,<ore:ingotLead>,<item:modularmachinery:itemmodularium>],
        [null,<item:modularmachinery:itemmodularium>,null]
    ],
    <item:modularmachinery:blockoutputbus> : [
        [<item:modularmachinery:blockcasing:0>],
        [<item:wopper:wopper>]
    ],
    <item:modularmachinery:blockinputbus> : [
        [<item:wopper:wopper>],
        [<item:modularmachinery:blockcasing:0>]
    ],
    <item:modulardiversity:blockemberinputhatch> : [
        [null,<item:embers:shard_ember>,null],
        [<item:embers:shard_ember>,<item:modularmachinery:blockcasing>,<item:embers:shard_ember>],
        [null,<item:embers:shard_ember>,null]
    ],
    <item:modularmachinery:blockcontroller> : [
        [<item:modularmachinery:itemmodularium>,<ore:stone>,<item:modularmachinery:itemmodularium>],
        [<ore:stone>,<item:contenttweaker:basic_transmission>,<ore:stone>],
        [<item:modularmachinery:itemmodularium>,<ore:stone>,<item:modularmachinery:itemmodularium>]
    ],
    <item:modulardiversity:blockemberinputhatch:1> : [
        [null,<embers:crystal_ember>,null],
        [<embers:crystal_ember>,<item:modulardiversity:blockemberinputhatch>,<embers:crystal_ember>],
        [null,<embers:crystal_ember>,null]
    ],
    <embers:beam_splitter> : [
        [null,<ore:ingotDawnstone>,null],
        [<ore:ingotCopper>,<ore:plateIron>,<ore:ingotCopper>],
        [null,<ore:ingotLead>,null]
    ],
    <embers:ember_pulser> : [
        [null,<ore:ingotDawnstone>,null],
        [<ore:plateBronze>,<embers:ember_emitter>,<ore:plateBronze>],
        [<embers:plate_caminite>,<ore:blockIron>,<embers:plate_caminite>]
    ]
};

//镜像合成
    static mirroredRecipes as IIngredient[][][IItemStack] = {
        
        <embers:ignition_cannon> : [
            [<embers:winding_gears>,<ore:plateDawnstone>,<ore:plateDawnstone>],
            [<contenttweaker:ash_ingot>,<embers:wildfire_core>,<embers:ember_pulser>],
            [<ore:stickWood>,<ore:plateDawnstone>,null]
        ]
    };

//无序合成
    static shapelessRecipes as IIngredient[][IItemStack] = {
        
    };

//添加配方
function initRegularRecipes(){
    logUtil.logInfo("Initializing regular shaped recipes for stage "+stageName);
    recipeUtil.addShapedRecipes(stageName, shapedRecipes);
    logUtil.logInfo("Initializing regular mirrored recipes for stage "+stageName);
    recipeUtil.addMirroredRecipes(stageName, mirroredRecipes);
    logUtil.logInfo("Initializing regular shapeless recipes for stage "+stageName);
    recipeUtil.addShapelessRecipes(stageName, shapelessRecipes);
}

//阶段特别配方
function initStageRecipes(){
    

}

function init(){
    logUtil.logInfo("Initializing recipes for stage "+stageName);
    initRegularRecipes();
    initStageRecipes();
}