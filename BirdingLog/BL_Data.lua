-- Birding Log Data
-- coding: utf-8 'ä

BirdingKit = 104 -- item category
Region = { Eriador=1, Rhovanion=2, Gondor=3, Mordor=4, Haradwaith=5 }
RegN = {}
for name,ix in pairs(Region) do RegN[ix] = name end

-- Region variables:
Angmar = "An";
Breeland = "Br";
Cardolan = "Ca";
Dunland = "Du";
Enedwaith = "En";
EredLuin = "EL";
Eregion = "Er";
Evendim = "Ev";
Forochel = "Fo";
Lonelands = "Lo";
MistyMountains = "MM";
NorthDowns = "ND";
Swanfleet = "Sw";
TheShire = "Sh";
Trollshaws = "Tr";

ChatRegions = {
    ["Bree-land"] = Breeland;
    ["Bree-town"] = Breeland;
    ["Archet"] = Breeland;

    ["Shire"] = TheShire;

    ["Ered Luin"] = EredLuin;
    ["Thorin's Hall"] = EredLuin;

    ["Lone-lands"] = Lonelands;
    ["North Downs"] = NorthDowns;
    ["Trollshaws"] = Trollshaws;
    ["Misty Mountains"] = MistyMountains;
    ["Evendim"] = Evendim;
    ["Angmar"] = Angmar;
    ["Forochel"] = Forochel;
    ["Eregion"] = Eregion;
    ["Enedwaith"] = Enedwaith;
    ["Dunland"] = Dunland;
    ["Cardolan"] = Cardolan;
    ["Swanfleet"] = Swanfleet;
};

Zone = {
		[Angmar]={z="Angmar", n=13, s=-4, e=-15, w=-41 },
		[Breeland]={z="Bree-land", n=-18.5, s=-37, e=-42, w=-63 },
		[Cardolan]={z="Cardolan", n=-37, s=-55, e=-28, w=-56 },
		[Dunland]={z="Dunland", n=-75, s=-90, e=1, w=-26 },
		[Enedwaith]={z="Enedwaith", n=-57, s=-75, e=-9, w=-24 },
		[EredLuin]={z="Ered Luin", n=-13, s=-29, e=-89, w=-108 },
		[Eregion]={z="Eregion", n=-40, s=-57, e=-6, w=-19 },
		[Evendim]={z="Evendim", n=-3, s=-20, e=-60, w=-76 },
		[Forochel]={z="Forochel", n=21, s=-3, e=-57, w=-89 },
		[Lonelands]={z="the Lone-lands", n=-28, s=-38, e=-23, w=-42 },
		[MistyMountains]={z="the Misty Mountains", n=-17, s=-32, e=9, w=-4 },
		[NorthDowns]={z="the North Downs", n=-4, s=-18.5, e=-33, w=-60 },
		[TheShire]={z="the Shire", n=-20, s=-38, e=-63, w=-88 },
		[Swanfleet]={z="Swanfleet", n=-50, s=-66, e=-18, w=-36 },
		[Trollshaws]={z="the Trollshaws", n=-26, s=-44, e=-4, w=-24 },
	}
Zname,Zlist = {}, {}
for zc,zt in Sort(Zone) do 
	Zname[zt.z] = zc
	table.insert(Zlist,zt.z)
end

Title = { [10]="Bird-brained", [30]="Fair Fowler", [50]="Unwavering Warbler", 
			[70]="Wing-spotter", [100]="Bird-tamer" }

ID = {	
		["6BC7D"] = {n="Arantar's Tern",f={'Lo'}},
		["6BB86"] = {n="Arnorian Falcon",f={'Ev'}},
		["6BBDA"] = {n="Ashen Vulture",f={'An'}},
		["6BB78"] = {n="Bar-tail Godwit",f={'Fo'}},
		["6BBB7"] = {n="Barleybird",f={'EL'}},
		["6BC82"] = {n="Barrens Shelduck",f={'An'}},
		["6BC02"] = {n="Barrow-plover",f={'Ca'}},
		["6BC6C"] = {n="Beleg's Shrike",f={'ND'}},
		["6BB63"] = {n="Black-back Gull",f={'Fo'}},
		["6BB9E"] = {n="Black-headed Gull",f={'EL','Ev'}},
		["6BBF0"] = {n="Black Kite",f={'Tr','Er'}},
		["6BBD1"] = {n="Blackcap",f={'MM'}},
		["6BBD3"] = {n="Blithe Lapwing",f={'En'}},
		["6BBE1"] = {n="Blue Tit",f={'MM'}},
		["6BBF7"] = {n="Blue-tailed Robin",f={'En'}},
		["6BC1F"] = {n="Bluebill",f={'An'}},
		["6BBF9"] = {n="Bogsnipe",f={'Du'}},
		["6B44B"] = {n="Brambling",f={'Sh'}},
		["6BBCC"] = {n="Brandywarbler",f={'Br'}},
		["6BBF8"] = {n="Brant",f={'An','Fo'}},
		["6BBB4"] = {n="Bree-thrush",f={'Br'}},
		["6BBDE"] = {n="Bruinen Finch",f={'Tr'}},
		["6BC1B"] = {n="Bullfinch",f={'MM'}},
		["6BB69"] = {n="Butcher-shrike",f={'En'}},
		["6BBCD"] = {n="Calanor's Lark",f={'Er'}},
		["6BBA0"] = {n="Celebrian's Bunting",f={'Tr'}},
		["6B451"] = {n="Chaffinch",f={'EL','Sh'}},
		["6B43C"] = {n="Chet-woodpecker",f={'Br'}},
		["6BB7F"] = {n="Chiffchaff",f={'ND'}},
		["6BB6E"] = {n="Cliff Swallow",f={'EL'}},
		["6BBFC"] = {n="Cliffcreeper",f={'MM'}},
		["6BB88"] = {n="Crag-swallow",f={'Du'}},
		["6BB9B"] = {n="Crane",f={'Sw'}},
		["6BC7A"] = {n="Crying Heron",f={'Ev'}},
		["6BBC3"] = {n="Cuckoo",f={'Ca'}},
		["6BC16"] = {n="Dotterel",f={'ND'}},
		["6BBE0"] = {n="Down-bunting",f={'ND'}},
		["6BB70"] = {n="Drake-hunting Eagle",f={'Du'}},
		["6BBF2"] = {n="Druen's Bunting",f={'Du'}},
		["6BBD0"] = {n="Dun-crow",f={'En','Du'}},
		["6BB84"] = {n="Duncrake",f={'Du'}},
		["6BB9A"] = {n="Dunnock",f={'ND'}},
		["6BBE9"] = {n="Dusk Harrier",f={'An'}},
		["6BB9F"] = {n="Dwarrowgander",f={'MM'}},
		["6BB65"] = {n="Edhel-swan",f={'Sw'}},
		["6BB74"] = {n="Eider",f={'EL'}},
		["6BBC1"] = {n="Ereglad Woodpecker",f={'Er'}},
		["6BB79"] = {n="Eriador Jay",f={'Lo'}},
		["6BBA1"] = {n="Etelan's Stormcaller",f={'Fo'}},
		["6BC09"] = {n="Etten-tit",f={'Tr'}},
		["6BBE2"] = {n="Even-dove",f={'Ev'}},
		["6BC75"] = {n="Fadrach's Fenling",f={'An'}},
		["6BBD8"] = {n="Falathlorn Woodpecker",f={'EL'}},
		["6BBFE"] = {n="Fen-tit",f={'Sw'}},
		["6BBC7"] = {n="Fir Goose",f={'Fo'}},
		["6BBEA"] = {n="Firecrest",f={'Er'}},
		["6BB6D"] = {n="Fleet-piper",f={'Sw'}},
		["6BBC9"] = {n="Fold-warbler",f={'Du'}},
		["6BC73"] = {n="Fornost Hawk",f={'ND'}},
		["6BB7D"] = {n="Gloam-singer",f={'Er'}},
		["6BB8B"] = {n="Goldcrest",f={'ND'}},
		["6BC1C"] = {n="Golden Eagle",f={'MM'}},
		["6BBAD"] = {n="Golden Plover",f={'Ca','Lo'}},
		["6BC6E"] = {n="Goldenthrush",f={'Tr'}},
		["6B445"] = {n="Goldfinch",f={'Br'}},
		["6BBED"] = {n="Goosander",f={'Ca','Sw'}},
		["6BB72"] = {n="Gravenwood Crossbill",f={'Du'}},
		["6B448"] = {n="Greenfinch",f={'Sh'}},
		["6BB94"] = {n="Greenshank",f={'Fo'}},
		["6BBB3"] = {n="Grey Heron",f={'Tr','Sw'}},
		["6BC26"] = {n="Grey Midge-catcher",f={'En'}},
		["6BB8E"] = {n="Grey Wagtail",f={'Ev'}},
		["6BBA4"] = {n="Greyflood Tern",f={'Ca'}},
		["6BBA9"] = {n="Greylag Goose",f={'Br'}},
		["6BBE4"] = {n="Griever Owl",f={'Er'}},
		["6BB7C"] = {n="Hang-nest Tit",f={'Er'}},
		["6BBD4"] = {n="Harvest Bunting",f={'Lo'}},
		["6BBA3"] = {n="Hawfinch",f={'Lo'}},
		["6BC7E"] = {n="Hazel-hen",f={'Tr'}},
		["6BB75"] = {n="Heath-roller",f={'Du'}},
		["6BB71"] = {n="Heather-fowl",f={'An'}},
		["6BB95"] = {n="Herring Gull",f={'Fo'}},
		["6BB85"] = {n="Hithaeglir Chough",f={'MM'}},
		["6BBAC"] = {n="Holly-sparrow",f={'Er'}},
		["6BC1A"] = {n="Horned Leaper",f={'An'}},
		["6BC25"] = {n="Ice Bay Plover",f={'Fo'}},
		["6BBF3"] = {n="Iron Waxwing",f={'An'}},
		["6BBAE"] = {n="Isengoose",f={'Du'}},
		["6BBDB"] = {n="Isilcar's Lark",f={'Ca'}},
		["6B434"] = {n="Jackdaw",f={'Br','Lo'}},
		["6BC71"] = {n="Kingsfell Blackbird",f={'ND','MM'}},
		["6BBB6"] = {n="Laeglin Warbler",f={'En'}},
		["6BBBA"] = {n="Lindion's Warbler",f={'Tr'}},
		["6B449"] = {n="Linnet",f={'Sh'}},
		["6BC72"] = {n="Lone-hawk",f={'Lo'}},
		["6BBD9"] = {n="Long-tail Duck",f={'Ev','ND'}},
		["6BBDF"] = {n="Long-tail Tit",f={'Fo'}},
		["6BC78"] = {n="Longshanks Heron",f={'Lo'}},
		["6BB6B"] = {n="Lord-heron",f={'Sw'}},
		["6BB97"] = {n="Luin Starling",f={'EL','Ev'}},
		["6BC0F"] = {n="Madelgard's Wagtail",f={'Sh'}},
		["6BBC0"] = {n="Magpie",f={'ND'}},
		["6B441"] = {n="Mallard",f={'Br'}},
		["6BC7C"] = {n="Marish Dabchick",f={'Sh'}},
		["6BBA8"] = {n="Marsh Warbler",f={'Sw'}},
		["6BB6C"] = {n="Meadow Pipit",f={'Sh'}},
		["6BC28"] = {n="Meluin Coot",f={'ND'}},
		["6BC29"] = {n="Methedras Nightingale",f={'Du'}},
		["6BBC6"] = {n="Midgecatcher",f={'An'}},
		["6BBB2"] = {n="Midgewater Lapwing",f={'Br'}},
		["6BC74"] = {n="Mist-ruff",f={'Er'}},
		["6BC27"] = {n="Mistle Thrush",f={'An'}},
		["6BBC2"] = {n="Misty Mountain Hopper",f={'MM'}},
		["6BB91"] = {n="Misty Owl",f={'MM'}},
		["6BC79"] = {n="Mitheithel Dabchick",f={'Sw'}},
		["6BC6D"] = {n="Moorcock",f={'Lo'}},
		["6B450"] = {n="Moorhen",f={'Br'}},
		["6BB80"] = {n="Mossy Pipit",f={'Er'}},
		["6BB90"] = {n="Mourning Treecreeper",f={'Tr'}},
		["6BBFD"] = {n="Mournshaw Bee-eater",f={'En'}},
		["6BBE3"] = {n="Narfang Shore-walker",f={'EL'}},
		["6BC11"] = {n="Naug-bittern",f={'Sw'}},
		["6BC04"] = {n="Nenuial Tern",f={'Ev'}},
		["6BB73"] = {n="Nethorn's Bunting",f={'Sw'}},
		["6BBBC"] = {n="North-tern",f={'Fo'}},
		["6BBCF"] = {n="Northfarthing Ninnyhammer",f={'Sh'}},
		["6BC18"] = {n="Nutcracker",f={'Tr'}},
		["6BB98"] = {n="Nuthatch",f={'MM'}},
		["6BB66"] = {n="Oranoril's Warbler",f={'Er'}},
		["6BBEB"] = {n="Orthon Drake",f={'An','Fo'}},
		["6BBA5"] = {n="Pale-cloaked Harrier",f={'En'}},
		["6BB67"] = {n="Peregrine Falcon",f={'MM'}},
		["6BBE5"] = {n="Perian Owl",f={'Tr'}},
		["6BBDD"] = {n="Petty-falcon",f={'Ca'}},
		["6BB96"] = {n="Pine Bunting",f={'MM'}},
		["6BBB9"] = {n="Pinkfoot Goose",f={'EL'}},
		["6BB92"] = {n="Pintail",f={'An'}},
		["6BC19"] = {n="Pochard",f={'Ev','ND'}},
		["6BBBD"] = {n="Red Kite",f={'Sh'}},
		["6BB77"] = {n="Red-billed Chough",f={'Ev'}},
		["6BBF1"] = {n="Red-breast Robin",f={'Br','Sh'}},
		["6BC6B"] = {n="Red-throat Diver",f={'Fo'}},
		["6BBAF"] = {n="Redcrest Drake",f={'Du'}},
		["6BBCB"] = {n="Redhorn Falcon",f={'Er'}},
		["6BBD7"] = {n="Redknot",f={'Fo'}},
		["6BB68"] = {n="Redpoll",f={'Ev'}},
		["6BBC4"] = {n="Redshank",f={'EL'}},
		["6B44D"] = {n="Redwing",f={'Br'}},
		["6BB93"] = {n="Reed Bunting",f={'Sh'}},
		["6BC0E"] = {n="Reedling",f={'En'}},
		["6BB8A"] = {n="Rhudaur Goose",f={'Tr'}},
		["6BBBE"] = {n="Ringed Blackbird",f={'Ca'}},
		["6BC07"] = {n="Rivendell Woodpecker",f={'Tr'}},
		["6BC22"] = {n="River-warbler",f={'En'}},
		["6BC12"] = {n="Rock Bunting",f={'Ca'}},
		["6BC80"] = {n="Rock Dove",f={'EL'}},
		["6BC10"] = {n="Rook",f={'EL'}},
		["6BBE8"] = {n="Rose-warbler",f={'Ca'}},
		["6BC6F"] = {n="Ruddy Stubble-hen",f={'Ca'}},
		["6BC03"] = {n="Ruddy Swallow",f={'En'}},
		["6BBBB"] = {n="Rushock-Snipe",f={'Sh'}},
		["6BB81"] = {n="Scoter",f={'Fo'}},
		["6BB7E"] = {n="Sedge Warbler",f={'Ca'}},
		["6BBA2"] = {n="Shaw-coot",f={'Tr','Sw'}},
		["6BB6F"] = {n="Shoveler",f={'Lo'}},
		["6BBEF"] = {n="Shrouded Drake",f={'An'}},
		["6BBAB"] = {n="Sickle Curlew",f={'Ev'}},
		["6BBBF"] = {n="Silver Stork",f={'Sw'}},
		["6BC13"] = {n="Silvertine Harrier",f={'Er'}},
		["6B436"] = {n="Skylark",f={'Br'}},
		["6B43D"] = {n="Smial-martin",f={'Sh'}},
		["6BBEC"] = {n="Snow-kite",f={'Fo'}},
		["6BB6A"] = {n="Solemn Tit",f={'Lo'}},
		["6BB62"] = {n="Song Thrush",f={'MM','ND'}},
		["6B44F"] = {n="Sparrowhawk",f={'Br'}},
		["6BB99"] = {n="Spotted Redshank",f={'ND'}},
		["6BBB1"] = {n="Starkmoor Owl",f={'Du'}},
		["6BC0D"] = {n="Stock Dove",f={'ND'}},
		["6BBD6"] = {n="Stonechat",f={'Lo'}},
		["6BC15"] = {n="Stonevale Goshawk",f={'Du'}},
		["6BB9D"] = {n="Stoor-crake",f={'Sw'}},
		["6BC7F"] = {n="Striding Ruff",f={'Br'}},
		["6BC14"] = {n="Swallow",f={'Ca','Ca'}},
		["6BC77"] = {n="Swart-hen",f={'Du'}},
		["6B444"] = {n="Swift",f={'Br','Lo'}},
		["6BBB0"] = {n="Tawny Owl",f={'EL'}},
		["6B443"] = {n="Teal",f={'EL','Sh'}},
		["6BC05"] = {n="Thick-knee",f={'Lo'}},
		["6BBF6"] = {n="Turtle-dove",f={'Ca'}},
		["6BBCA"] = {n="Twite",f={'En','Er'}},
		["6BB89"] = {n="Valardis's Swan",f={'Ev'}},
		["6BC70"] = {n="Wadewater Heron",f={'Sw'}},
		["6BBC5"] = {n="Water Pipit",f={'Ca','Sw'}},
		["6BBD2"] = {n="Water Rail",f={'Ev'}},
		["6BB8F"] = {n="Weatherdrake",f={'Lo'}},
		["6BC7B"] = {n="Weeping Diver",f={'An'}},
		["6BC20"] = {n="Weeping Finch",f={'An'}},
		["6BBEE"] = {n="Wheatear",f={'EL'}},
		["6BBE7"] = {n="Whinchat",f={'MM'}},
		["6BBB8"] = {n="White Piper",f={'Ev'}},
		["6BB7A"] = {n="White-eye Duck",f={'En','Er'}},
		["6BC17"] = {n="White-tailed Eagle",f={'EL'}},
		["6BBE6"] = {n="White-throated Dipper",f={'Ev'}},
		["6BB8D"] = {n="Whitethroat",f={'ND'}},
		["6BC76"] = {n="Willow-fowl",f={'Fo'}},
		["6BBD5"] = {n="Windfell Owl",f={'En'}},
		["6B44C"] = {n="Wood-pigeon",f={'Br','Sh'}},
		["6BB64"] = {n="Woodlark",f={'Tr'}},
		["6BBDC"] = {n="Woodsnipe",f={'Ca'}},
		["6BC21"] = {n="Wren",f={'MM'}},
		["6BC23"] = {n="Wryneck",f={'En'}},
		["6BC81"] = {n="Yale-sparrow",f={'Sh'}},
		["6BC24"] = {n="Yellow Wagtail",f={'En','Du'}},
		["6B440"] = {n="Yellowhammer",f={'Tr','Er'}},
	}
for id,t in pairs(ID) do
	for i,z in pairs(t.f) do
		local zt = Zone[z]
		if not zt then Turbine.Shell.WriteLine("Bad zone code: "..z)
		else
			if not zt.id then zt.id = {} end
			zt.id[id] = true
		end
	end
end