#priority -700

static machine_name as string = "thermal_lab";

function init(){
    mods.modularmachinery.RecipeBuilder.newBuilder(machine_name+"_default", machine_name, 200)
        .addEmberInput(800)
        .addItemInput(<embers:ignition_cannon>)
        .addItemOutput(<contenttweaker:obsidian_ash>*4)
        .addItemOutput(<embers:ignition_cannon>)
        .build();
}