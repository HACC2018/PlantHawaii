-----------------------------------------------------------------------------
---------Need to insert Hawaiian Island ID?--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO SPECIES(SPECIES_NAME, SUBSPECIES_NAME, [DESCRIPTION], STORY, GENUS_ID, COMMON_NAME_ID, HAWAIIAN_NAME_ID, NATIVE_STATUS_ID, INVASIVE_STATUS_ID, FEDERAL_STATUS_ID)
	VALUES('villosa', 'N/A',
		'This water loving fern can be used in and around ponds and other water features',
		'Early Use: Unknown

		Modern Use: Used a drought tolerant groundcover',
		(SELECT [dbo].FUNCTION_GENUS_ID('Marsilea')),
		(SELECT [dbo].FUNCTION_COMMON_NAME_ID('Villous waterclover')),
		(SELECT [dbo].FUNCTION_HAWAIIAN_NAME_ID('?ihi?ihi')),
		(SELECT [dbo].FUNCTION_NATIVE_STATUS_ID('Endemic')),
		(SELECT [dbo].FUNCTION_INVASIVE_STATUS_ID('Non Invasive')),
		(SELECT [dbo].FUNCTION_FEDERAL_STATUS_ID('EN'))
	);
INSERT INTO SPECIES(SPECIES_NAME, SUBSPECIES_NAME, [DESCRIPTION], STORY, GENUS_ID, COMMON_NAME_ID, HAWAIIAN_NAME_ID, NATIVE_STATUS_ID, INVASIVE_STATUS_ID, FEDERAL_STATUS_ID)
	VALUES('brackenridgei', 'brackenridgei',
		'The Yellow Hibiscus can appear as a woody shrub or a small tree. It has sharp prickles and striking yellow flowers.',
		'Early Use: Was planted for ornamental use.

		Modern Use: Used as the official flower of Hawai''i',
		(SELECT [dbo].FUNCTION_GENUS_ID('Hibiscus')),
		(SELECT [dbo].FUNCTION_COMMON_NAME_ID('Yellow Hibiscus')),
		(SELECT [dbo].FUNCTION_HAWAIIAN_NAME_ID('Aloalo')),
		(SELECT [dbo].FUNCTION_NATIVE_STATUS_ID('Endemic')),
		(SELECT [dbo].FUNCTION_INVASIVE_STATUS_ID('Non Invasive')),
		(SELECT [dbo].FUNCTION_FEDERAL_STATUS_ID('EN'))
	);
INSERT INTO SPECIES(SPECIES_NAME, SUBSPECIES_NAME, [DESCRIPTION], STORY, GENUS_ID, COMMON_NAME_ID, HAWAIIAN_NAME_ID, NATIVE_STATUS_ID, INVASIVE_STATUS_ID, FEDERAL_STATUS_ID)
	VALUES('waimeae', 'N/A',
		'Small, gray-barked tree up to 30 feet tall with light green, round/oval leaves and white/pink flower',
		'Early Use: Was grown near houses for their flowers.

		Modern Use: Unknown',
		(SELECT [dbo].FUNCTION_GENUS_ID('Hibiscus')),
		(SELECT [dbo].FUNCTION_COMMON_NAME_ID('White Kauai Rosemallow')),
		(SELECT [dbo].FUNCTION_HAWAIIAN_NAME_ID('Waimeae')),
		(SELECT [dbo].FUNCTION_NATIVE_STATUS_ID('Endemic')),
		(SELECT [dbo].FUNCTION_INVASIVE_STATUS_ID('Non Invasive')),
		(SELECT [dbo].FUNCTION_FEDERAL_STATUS_ID('EN'))
	);
INSERT INTO SPECIES(SPECIES_NAME, SUBSPECIES_NAME, [DESCRIPTION], STORY, GENUS_ID, COMMON_NAME_ID, HAWAIIAN_NAME_ID, NATIVE_STATUS_ID, INVASIVE_STATUS_ID, FEDERAL_STATUS_ID)
	VALUES('emodeoides', 'N/A',
		'This shrub can grow to 6 ft high and 15 ft wide. Naturally found at high elevations, it has cream or yellow flowers, and produces black/dark purple fruit..',
		'Early Use: Bark and fruits were used to make leis and yellow and black dyes.

		Modern Use: Still used to make leis and dyes.',
		(SELECT [dbo].FUNCTION_GENUS_ID('Coprosma')),
		(SELECT [dbo].FUNCTION_COMMON_NAME_ID('Black-fruited Coprosma')),
		(SELECT [dbo].FUNCTION_HAWAIIAN_NAME_ID('Aikanene')),
		(SELECT [dbo].FUNCTION_NATIVE_STATUS_ID('Endemic')),
		(SELECT [dbo].FUNCTION_INVASIVE_STATUS_ID('Non Invasive')),
		(SELECT [dbo].FUNCTION_FEDERAL_STATUS_ID('LC'))
	);
INSERT INTO SPECIES(SPECIES_NAME, SUBSPECIES_NAME, [DESCRIPTION], STORY, GENUS_ID, COMMON_NAME_ID, HAWAIIAN_NAME_ID, NATIVE_STATUS_ID, INVASIVE_STATUS_ID, FEDERAL_STATUS_ID)
	VALUES('subcordata', 'N/A',
		'The Kou is a tree that can grow from 15 to 30 ft high, with a canopy that can spread about 25 ft across. Suitable for roomy landscapes, it has light orange flowers and produces black fruit.',
		'Early Use: Was used for making red dyes, leis for young girls, fishing hook containers, bowls, cups, calabashes. Considered one of the best woods for carving, images of gods were made of kou wood. The seeds were used as emergency food, and to treat the thrush disease.

		Modern Use: Still used for carving and making red dyes.',
		(SELECT [dbo].FUNCTION_GENUS_ID('Cordia')),
		(SELECT [dbo].FUNCTION_COMMON_NAME_ID('N/A')),
		(SELECT [dbo].FUNCTION_HAWAIIAN_NAME_ID('Kou')),
		(SELECT [dbo].FUNCTION_NATIVE_STATUS_ID('Native')),
		(SELECT [dbo].FUNCTION_INVASIVE_STATUS_ID('Non Invasive')),
		(SELECT [dbo].FUNCTION_FEDERAL_STATUS_ID('LC'))
	);
INSERT INTO SPECIES(SPECIES_NAME, SUBSPECIES_NAME, [DESCRIPTION], STORY, GENUS_ID, COMMON_NAME_ID, HAWAIIAN_NAME_ID, NATIVE_STATUS_ID, INVASIVE_STATUS_ID, FEDERAL_STATUS_ID)
	VALUES('indica', 'N/A',
		'A vigorous tender perennial vine native to tropical habitats throughout the world. It bears heart-shaped leaves and rich purple funnel-shaped flowers. It is a poisonous invasive species.',
		'Early Use: Pounded stems and roots were applied externally to wounds, aches, bruises and broken bones

		Modern Use: Still used as a folk medicine',
		(SELECT [dbo].FUNCTION_GENUS_ID('Ipomea')),
		(SELECT [dbo].FUNCTION_COMMON_NAME_ID('Oceanblue Morning Glory')),
		(SELECT [dbo].FUNCTION_HAWAIIAN_NAME_ID('Koali awa')),
		(SELECT [dbo].FUNCTION_NATIVE_STATUS_ID('Native')),
		(SELECT [dbo].FUNCTION_INVASIVE_STATUS_ID('Invasive')),
		(SELECT [dbo].FUNCTION_FEDERAL_STATUS_ID('LC'))
	);
INSERT INTO SPECIES(SPECIES_NAME, SUBSPECIES_NAME, [DESCRIPTION], STORY, GENUS_ID, COMMON_NAME_ID, HAWAIIAN_NAME_ID, NATIVE_STATUS_ID, INVASIVE_STATUS_ID, FEDERAL_STATUS_ID)
	VALUES('decapetala', 'N/A',
		'A robust, thorny, evergreen shrub  that can grow  2 to 4 m, often forming dense thickets. The leaves are dark green, paler beneath, not glossy, and the flowers are pale yellow, in elongated, erect clusters. Fruit are brown, woody pods, flattened, unsegmented, smooth, sharply beaked at apex',
		'Early Use: Unknown

		Modern Use: Unknown',
		(SELECT [dbo].FUNCTION_GENUS_ID('Biancaea')),
		(SELECT [dbo].FUNCTION_COMMON_NAME_ID('Cat''s Claw')),
		(SELECT [dbo].FUNCTION_HAWAIIAN_NAME_ID('N/A')),
		(SELECT [dbo].FUNCTION_NATIVE_STATUS_ID('Non Native')),
		(SELECT [dbo].FUNCTION_INVASIVE_STATUS_ID('Invasive')),
		(SELECT [dbo].FUNCTION_FEDERAL_STATUS_ID('LC'))
	);
INSERT INTO SPECIES(SPECIES_NAME, SUBSPECIES_NAME, [DESCRIPTION], STORY, GENUS_ID, COMMON_NAME_ID, HAWAIIAN_NAME_ID, NATIVE_STATUS_ID, INVASIVE_STATUS_ID, FEDERAL_STATUS_ID)
	VALUES('rockii', 'calcisabulorum',
		' A rare species of flowering plant, it appears as a small, mat-forming shrub growing no more than about 10 centimeters tall. Grows only a single flower head.',
		'Early Use: Unknown

		Modern Use: Unknown',
		(SELECT [dbo].FUNCTION_GENUS_ID('Tetramolopium')),
		(SELECT [dbo].FUNCTION_COMMON_NAME_ID('Dune Tetramolopium')),
		(SELECT [dbo].FUNCTION_HAWAIIAN_NAME_ID('N/A')),
		(SELECT [dbo].FUNCTION_NATIVE_STATUS_ID('Endemic')),
		(SELECT [dbo].FUNCTION_INVASIVE_STATUS_ID('Non Invasive')),
		(SELECT [dbo].FUNCTION_FEDERAL_STATUS_ID('VU'))
	);
INSERT INTO SPECIES(SPECIES_NAME, SUBSPECIES_NAME, [DESCRIPTION], STORY, GENUS_ID, COMMON_NAME_ID, HAWAIIAN_NAME_ID, NATIVE_STATUS_ID, INVASIVE_STATUS_ID, FEDERAL_STATUS_ID)
	VALUES('sandwicense', 'N/A',
		'A non-woody, herbaceous plant that tends to clump, it can grow to over 3 ft high and 6 ft wide. It produces white flowers.',
		'Early Use: Tap root was cooked and eaten by babies and elderly people for medicinal purposes

		Modern Use: Unknown',
		(SELECT [dbo].FUNCTION_GENUS_ID('Peucedanum')),
		(SELECT [dbo].FUNCTION_COMMON_NAME_ID('N/A')),
		(SELECT [dbo].FUNCTION_HAWAIIAN_NAME_ID('Makou')),
		(SELECT [dbo].FUNCTION_NATIVE_STATUS_ID('Endemic')),
		(SELECT [dbo].FUNCTION_INVASIVE_STATUS_ID('Non Invasive')),
		(SELECT [dbo].FUNCTION_FEDERAL_STATUS_ID('VU'))
	);
INSERT INTO SPECIES(SPECIES_NAME, SUBSPECIES_NAME, [DESCRIPTION], STORY, GENUS_ID, COMMON_NAME_ID, HAWAIIAN_NAME_ID, NATIVE_STATUS_ID, INVASIVE_STATUS_ID, FEDERAL_STATUS_ID)
	VALUES('polymorpha', 'N/A',
		'It ranges in habit from a prostrate shrub to a 100 foot tree. Young bark is smooth and light gray and becomes rough and scaly with age. powder puff like flowers are most often a shade of red, but yellow, orange, salmon, and pink forms are also found.',
		'Early Use: Lehua was used to make leis. Medicinal uses for pain relief, thrush treatment, and digestive problems. It was also known as a superior fire wood.

		Modern Use: Leis are still made, while the wood is prized for flooring, furniture, decorative poles, cravings, and ''ukulule keys. Used to make honey and folk remedy teas.',
		(SELECT [dbo].FUNCTION_GENUS_ID('Metrosideros')),
		(SELECT [dbo].FUNCTION_COMMON_NAME_ID('N/A')),
		(SELECT [dbo].FUNCTION_HAWAIIAN_NAME_ID('Lehua')),
		(SELECT [dbo].FUNCTION_NATIVE_STATUS_ID('Endemic')),
		(SELECT [dbo].FUNCTION_INVASIVE_STATUS_ID('Non Invasive')),
		(SELECT [dbo].FUNCTION_FEDERAL_STATUS_ID('N/A'))
	);
INSERT INTO SPECIES(SPECIES_NAME, SUBSPECIES_NAME, [DESCRIPTION], STORY, GENUS_ID, COMMON_NAME_ID, HAWAIIAN_NAME_ID, NATIVE_STATUS_ID, INVASIVE_STATUS_ID, FEDERAL_STATUS_ID)
	VALUES('glauca', 'N/A',
		'Hawaiian poppy is non-woody, herbaceous, and tends to clump. It can grow to over 3 ft high, and 2 to 4 ft wide, oer more. Green to gray leaves with yellowish prickles, and white and yellow flowers.',
		'Early Use: Bright yellow sap and seeds were used to treat toothache and nerve pain.

		Modern Use: Used in cow pastures to form beautiful and natural border hedges (many creatures won''t eat pua kala)',
		(SELECT [dbo].FUNCTION_GENUS_ID('Argemone')),
		(SELECT [dbo].FUNCTION_COMMON_NAME_ID('N/A')),
		(SELECT [dbo].FUNCTION_HAWAIIAN_NAME_ID('Pua Kala')),
		(SELECT [dbo].FUNCTION_NATIVE_STATUS_ID('Endemic')), 
		(SELECT [dbo].FUNCTION_INVASIVE_STATUS_ID('Non Invasive')), 
		(SELECT [dbo].FUNCTION_FEDERAL_STATUS_ID('EN'))
	);
INSERT INTO SPECIES(SPECIES_NAME, SUBSPECIES_NAME, [DESCRIPTION], STORY, GENUS_ID, COMMON_NAME_ID, HAWAIIAN_NAME_ID, NATIVE_STATUS_ID, INVASIVE_STATUS_ID, FEDERAL_STATUS_ID)
	VALUES('populnea', 'N/A',
		'A fast growing, small tree or a large shrub.  It generally reaches a height of 30 feet with a spread of 12 feet.',
		'Early Use: Was used to make cordage, dye, lei, and house furnishings (food bowels, platters and dishes). Was considered a sacred tree, and young milo leaves and flowers were edible

		Modern Use: Seeds are used to make permanent lei, and the wood is used for to make carvings, bowls and platters.',
		(SELECT [dbo].FUNCTION_GENUS_ID('Thespesia')),
		(SELECT [dbo].FUNCTION_COMMON_NAME_ID('Indian Tulip Tree')),
		(SELECT [dbo].FUNCTION_HAWAIIAN_NAME_ID('Milo')),
		(SELECT [dbo].FUNCTION_NATIVE_STATUS_ID('Native')),
		(SELECT [dbo].FUNCTION_INVASIVE_STATUS_ID('Non Invasive')),
		(SELECT [dbo].FUNCTION_FEDERAL_STATUS_ID('N/A'))
	);
INSERT INTO SPECIES(SPECIES_NAME, SUBSPECIES_NAME, [DESCRIPTION], STORY, GENUS_ID, COMMON_NAME_ID, HAWAIIAN_NAME_ID, NATIVE_STATUS_ID, INVASIVE_STATUS_ID, FEDERAL_STATUS_ID)
	VALUES('octovalvis', 'N/A',
		'It can grow to be one meter tall on average but is able to grow taller. Its flowers are yellow in appearance, and they produce small capsular fruits containing many minute seeds.',
		'Early Use: Unknown

		Modern Use: Is known for its anti-ageing properties',
		(SELECT [dbo].FUNCTION_GENUS_ID('Ludwigia')),
		(SELECT [dbo].FUNCTION_COMMON_NAME_ID('Mexian Primrose Willow')),
		(SELECT [dbo].FUNCTION_HAWAIIAN_NAME_ID('N/A')),
		(SELECT [dbo].FUNCTION_NATIVE_STATUS_ID('Native')),
		(SELECT [dbo].FUNCTION_INVASIVE_STATUS_ID('Non Invasive')),
		(SELECT [dbo].FUNCTION_FEDERAL_STATUS_ID('N/A'))
	);
-------------------------------------------------------------------------------------------
