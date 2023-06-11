import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.TextComponent;
import crafttweaker.api.entity.effect.MobEffect;
import crafttweaker.api.entity.effect.MobEffectInstance;   
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.event.entity.living.use.LivingEntityUseItemFinishEvent;
import crafttweaker.api.event.entity.LivingEvent;
import crafttweaker.api.event.Event;
import crafttweaker.api.events.CTEventManager;
import mods.jei.JEI;


//foods to both hide in JEI and remove crafting table recipe
var foodsToFullyRemove = [
  <item:create:dough>,
  <item:create_factory:butter>,
  <item:create_things_and_misc:copper_knife>,
  <item:create_things_and_misc:brass_knife>,
  <item:create_things_and_misc:zinc_knife>,
  <item:pamhc2crops:cabbageseeditem>,
  <item:pamhc2crops:onionseeditem>,
  <item:pamhc2crops:riceseeditem>,
  <item:pamhc2crops:tomatoseeditem>,
  <item:pamhc2foodcore:applepieitem>,
  <item:pamhc2foodcore:baconandeggsitem>,
  <item:pamhc2foodcore:basiccheeseburgeritem>,
  <item:pamhc2foodcore:basicchickensandwichitem>,
  <item:pamhc2foodcore:basicfishsandwichitem>,
  <item:pamhc2foodcore:basichamburgeritem>,
  <item:pamhc2foodcore:beefjerkyitem>,
  <item:pamhc2foodcore:chickenjerkyitem>,
  <item:pamhc2foodcore:chocolaterollitem>,
  <item:pamhc2foodcore:cocoapowderitem>,
  <item:pamhc2foodcore:fishjerkyitem>,
  <item:pamhc2foodcore:friedeggitem>,
  <item:pamhc2foodcore:hotchocolateitem>,
  <item:pamhc2foodcore:marshmellowsitem>,
  <item:pamhc2foodcore:muttonjerkyitem>,
  <item:pamhc2foodcore:noodlesoupitem>,
  <item:pamhc2foodcore:pastaitem>,
  <item:pamhc2foodcore:potatosoupitem>,
  <item:pamhc2foodcore:porkjerkyitem>,
  <item:pamhc2foodcore:pumpkinsoupitem>,
  <item:pamhc2foodcore:rabbitjerkyitem>,
  <item:pamhc2foodcore:smoresitem>,
  <item:pamhc2foodextended:applecideritem>,
  <item:pamhc2foodextended:blueberrypieitem>,
  <item:pamhc2foodextended:brownieitem>,
  <item:pamhc2foodextended:coffeeconlecheitem>,
  <item:pamhc2foodextended:dandelionteaitem>,
  <item:pamhc2foodextended:deluxecheeseburgeritem>,
  <item:pamhc2foodextended:espressoitem>,
  <item:pamhc2foodextended:friedriceitem>,
  <item:pamhc2foodextended:greenteaitem>,
  <item:pamhc2foodextended:hamandcheesesandwichitem>,
  <item:pamhc2foodextended:leafychickensandwichitem>,
  <item:pamhc2foodextended:leafyfishsandwichitem>,
  <item:pamhc2foodextended:mixedsaladitem>,
  <item:pamhc2foodextended:rosepetalteaitem>,
  <item:pamhc2foodextended:shepardspieitem>,
  <item:pamhc2foodextended:sweetteaitem>,
  <item:pamhc2foodextended:vegetablesoupitem>,
  <item:pamhc2foodextended:omuriceitem>
];

for food in foodsToFullyRemove {
  JEI.hideIngredient(food);
  craftingTable.remove(food);  
}


//hide items with no crafting table recipe
JEI.hideIngredient(<item:create_confectionery:hot_chocolate_bottle>);
JEI.hideIngredient(<item:create_confectionery:soothing_hot_chocolate>);
JEI.hideIngredient(<item:create_confectionery:soothing_hot_chocolate>);
JEI.hideIngredient(<item:delightful:pumpkin_pie_slice>);
JEI.hideIngredient(<item:pamhc2crops:hotteaitem>);
JEI.hideIngredient(<item:pamhc2crops:hotcoffeeitem>);
JEI.hideIngredient(<item:pamhc2crops:onionitem>);
JEI.hideIngredient(<item:pamhc2crops:riceitem>);
JEI.hideIngredient(<item:pamhc2crops:tomatoitem>);

//remove crafting recipe for items that don't need to be hid   
craftingTable.remove(<item:pamhc2foodextended:chaiteaitem>);
craftingTable.remove(<item:pamhc2foodextended:earlgreyteaitem>);
craftingTable.remove(<item:pamhc2foodextended:hazelnutcoffeeitem>);

//remove other recipe types
smoker.remove(<item:pamhc2crops:hotcoffeeitem>);
smoker.remove(<item:pamhc2crops:hotteaitem>);
furnace.remove(<item:pamhc2crops:hotcoffeeitem>);
furnace.remove(<item:pamhc2crops:hotteaitem>);
campfire.remove(<item:pamhc2crops:hotcoffeeitem>);
campfire.remove(<item:pamhc2crops:hotteaitem>);

//remove specifc recipe
craftingTable.removeByName("delightful:food/marshmallow_stick_from_water_bottle");


//inedibles
<item:pamhc2crops:coffeebeanitem>.food = null;
<item:pamhc2foodcore:butteritem>.food = null;
<item:pamhc2foodcore:batteritem>.food = null;
<item:pamhc2foodcore:saltitem>.food = null;
<item:pamhc2foodcore:cookingoilitem>.food = null;
<item:pamhc2foodcore:vinegaritem>.food = null;
<item:pamhc2foodcore:mayonaiseitem>.food = null;
<item:pamhc2foodextended:saladdressingitem>.food = null;


//tooltip addition
<item:brewinandchewin:flaxen_cheese_wedge>.addTooltip(new TextComponent("A large slice of cheese.").withStyle(<constant:minecraft:formatting:gray>));
<item:brewinandchewin:scarlet_cheese_wedge>.addTooltip(new TextComponent("A large slice of scarlet cheese.").withStyle(<constant:minecraft:formatting:gray>));
<item:farmersdelight:melon_juice>.addTooltip(new TextComponent("A pitcher of melon juice.").withStyle(<constant:minecraft:formatting:gray>));
<item:pamhc2foodcore:caramelitem>.addTooltip(new TextComponent("A smaller bar of caramel.").withStyle(<constant:minecraft:formatting:gray>));
<item:pamhc2foodcore:cheeseitem>.addTooltip(new TextComponent("A small slice of cheese.").withStyle(<constant:minecraft:formatting:gray>));
<item:pamhc2foodextended:hazelnutcoffeeitem>.addTooltip(new TextComponent("Caffeinated II (5:00)").withStyle(<constant:minecraft:formatting:blue>));

//tooltip addition with no FoodProperties change
<item:brewinandchewin:kimchi>.addTooltip(new TextComponent("A simple Kimchi blend.").withStyle(<constant:minecraft:formatting:gray>));
<item:farmersdelight:roast_chicken_block>.addTooltip(new TextComponent("A large roast chicken meal to share!").withStyle(<constant:minecraft:formatting:gray>));
<item:farmersrespite:coffee_beans>.addTooltip(new TextComponent("High-grade beans fit for brewing.").withStyle(<constant:minecraft:formatting:gray>));
<item:overweight_farming:melon_juice>.addTooltip(new TextComponent("Straight from the source!").withStyle(<constant:minecraft:formatting:gray>));
<item:pamhc2crops:tealeafitem>.addTooltip(new TextComponent("Small bits of tea leaves.").withStyle(<constant:minecraft:formatting:gray>));
<item:pamhc2crops:coffeebeanitem>.addTooltip(new TextComponent("Low-grade beans unfit for brewing.").withStyle(<constant:minecraft:formatting:gray>));
<item:pamhc2foodcore:chocolatebaritem>.addTooltip(new TextComponent("A smaller bar of chocolate.").withStyle(<constant:minecraft:formatting:gray>));
<item:pamhc2foodextended:kimchiitem>.addTooltip(new TextComponent("A more complex Kimchi blend.").withStyle(<constant:minecraft:formatting:gray>));
<item:pamhc2foodextended:roastchickenitem>.addTooltip(new TextComponent("A smaller chicken roast for when you don't feel like sharing.").withStyle(<constant:minecraft:formatting:gray>));


//FoodProperties change
<item:brewinandchewin:flaxen_cheese_wedge>.food = FoodProperties.create(5, 0.8);
<item:brewinandchewin:scarlet_cheese_wedge>.food = FoodProperties.create(5, 0.8);
<item:farmersdelight:melon_juice>.food = FoodProperties.create(7, 0.5);
<item:pamhc2foodcore:cheeseitem>.food = FoodProperties.create(2, 1);
<item:pamhc2foodcore:caramelitem>.food = FoodProperties.create(3, 1);
<item:pamhc2foodextended:hazelnutcoffeeitem>.food = FoodProperties.create(4, 1.2).addEffect(new MobEffectInstance(<mobeffect:farmersrespite:caffeinated>, 6000, 1), 1);

//FoodProperties change with no tooltip addition
<item:farmersdelight:mixed_salad>.food = FoodProperties.create(8, 0.6);
<item:pamhc2foodcore:creamitem>.food = FoodProperties.create(2, 1);
<item:pamhc2foodextended:earlgreyteaitem>.food = FoodProperties.create(3, 1);
<item:pamhc2foodextended:chaiteaitem>.food = FoodProperties.create(3, 1);


//stac szie
<item:pamhc2foodextended:earlgreyteaitem>.setMaxStackSize(16);
<item:pamhc2foodextended:chaiteaitem>.setMaxStackSize(16);
<item:pamhc2foodextended:hazelnutcoffeeitem>.setMaxStackSize(16);


//drink and you shall receive glass bottle
CTEventManager.register<crafttweaker.api.event.entity.living.use.LivingEntityUseItemFinishEvent>((event) => {
    var living = event.getEntityLiving(); 

    if !(living is Player) {
        return;
    }

    var player = living as Player;

    if (<item:pamhc2foodextended:hazelnutcoffeeitem>.matches(event.item)) {
      player.give(<item:minecraft:glass_bottle>);
    } else if (<item:pamhc2foodextended:earlgreyteaitem>.matches(event.item)) {
      player.give(<item:minecraft:glass_bottle>);
    } else if (<item:pamhc2foodextended:sundayhighteaitem>.matches(event.item)) {
      player.give(<item:minecraft:glass_bottle>);
    } else if (<item:pamhc2foodextended:chaiteaitem>.matches(event.item)) {
      player.give(<item:minecraft:glass_bottle>);
    }
});
