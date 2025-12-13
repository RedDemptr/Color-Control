# will run as the cube marker entity that is captured
#
$data modify storage cc:temp args.team set value $(team)
data modify storage cc:temp args.item set from entity @s data.item
data modify storage cc:temp args.effect set from entity @s data.effect
function cc:main/universal/give_item with storage cc:temp args