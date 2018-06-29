INSERT INTO beardColors
(color)
VALUES 
("red"),
("blue"),
("green"),
("orange"),
("yellow"),
("black"),
("purple");

INSERT INTO clan
(name)
VALUES
("Stonehammer"),
("Proudfeet"),
("Bedazzlers"),
("GoldDragon"),
("Drunkies"),
("Bastards");

INSERT INTO favDrinks
(name)
VALUES
("Apple Juice"),
("Ginger Beer"),
("Dragons Blood"),
("Unicorn Piss"),
("Coffee"),
("Tiny Coloda");

INSERT INTO favWeapons
(name)
VALUES
("Hammer"),
("Battle Axe"),
("Fairy Wand"),
("Spoon"),
("Bare Fists"),
("Bear Fists");

INSERT INTO occupations
(name)
VALUES
("Gem Smith"),
("Unicorn Milker"),
("Weapon Smith"),
("Child Smith"),
("Hobo"),
("Mercenary");

INSERT INTO dwarves (
name,
height,
beardLength,
clanId,
beardColorId,
occupationId,
favWeaponId,
favDrinkId
)
VALUES
("Ammon", 4,4,1,1,1,1,1),
("Bobso", 3,1,2,2,2,2,2),
("CrazyLegs", 2,1,3,3,3,3,3),
("Doozer", 1,2,4,4,4,4,4),
("Earl", 5,3,5,5,5,5,5),
("Father", 3,2,6,6,6,6,6);

SELECT 
dwarves.dwarfId,
dwarves.name,
dwarves.height,
dwarves.beardLength,
clan.name AS "clan",
beardColors.color AS "beardColor",
occupations.name AS "occupation",
favWeapons.name AS "favWeapon",
favDrinks.name AS "favDrink"

FROM dwarves
LEFT JOIN clan
USING (clanId)
LEFT JOIN beardColors
USING (beardColorId)
LEFT JOIN occupations 
USING (occupationId)
LEFT JOIN favWeapons 
USING (favWeaponId)
LEFT JOIN favDrinks 
USING (favDrinkId);






















