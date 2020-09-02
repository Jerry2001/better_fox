#Gets info about the nearest fox's health and equipment

tellraw @s {"text":"The Info Of The Nearest Fox"}
tellraw @s {"text":"* Boot:"}
tellraw @s {"nbt":"ArmorItems[0].id", "entity":"@e[type=fox, limit=1, sort=nearest]"}
tellraw @s {"nbt":"ArmorItems[0].tag.Enchantments", "entity":"@e[type=fox, limit=1, sort=nearest]"}
tellraw @s {"text":"* Leggings:"}
tellraw @s {"nbt":"ArmorItems[1].id", "entity":"@e[type=fox, limit=1, sort=nearest]"}
tellraw @s {"nbt":"ArmorItems[1].tag.Enchantments", "entity":"@e[type=fox, limit=1, sort=nearest]"}
tellraw @s {"text":"* Chest plate:"}
tellraw @s {"nbt":"ArmorItems[2].id", "entity":"@e[type=fox, limit=1, sort=nearest]"}
tellraw @s {"nbt":"ArmorItems[2].tag.Enchantments", "entity":"@e[type=fox, limit=1, sort=nearest]"}
tellraw @s {"text":"* Helmet:"}
tellraw @s {"nbt":"ArmorItems[3].id", "entity":"@e[type=fox, limit=1, sort=nearest]"}
tellraw @s {"nbt":"ArmorItems[3].tag.Enchantments", "entity":"@e[type=fox, limit=1, sort=nearest]"}
tellraw @s {"text":"* Righ Hand:"}
tellraw @s {"nbt":"HandItems[0].id", "entity":"@e[type=fox, limit=1, sort=nearest]"}
tellraw @s {"nbt":"HandItems[0].tag.Enchantments", "entity":"@e[type=fox, limit=1, sort=nearest]"}
tellraw @s {"text":"* Left Hand:"}
tellraw @s {"nbt":"HandItems[1].id", "entity":"@e[type=fox, limit=1, sort=nearest]"}
tellraw @s {"text":"-Health:"}
tellraw @s {"nbt":"Health", "entity":"@e[type=fox, limit=1, sort=nearest]"}