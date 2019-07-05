defmodule ExPurpleTiger.Data do
  @moduledoc false

  @adjectives [
    "attractive",
    "bald",
    "beautiful",
    "rare",
    "clean",
    "dazzling",
    "lucky",
    "elegant",
    "fancy",
    "fit",
    "fantastic",
    "glamorous",
    "gorgeous",
    "handsome",
    "long",
    "magnificent",
    "muscular",
    "plain",
    "able",
    "quaint",
    "scruffy",
    "innocent",
    "short",
    "skinny",
    "acrobatic",
    "tall",
    "proper",
    "alert",
    "lone",
    "agreeable",
    "ambitious",
    "brave",
    "calm",
    "delightful",
    "eager",
    "faithful",
    "gentle",
    "happy",
    "jolly",
    "kind",
    "lively",
    "nice",
    "obedient",
    "polite",
    "proud",
    "silly",
    "thankful",
    "winning",
    "witty",
    "wonderful",
    "zealous",
    "expert",
    "amateur",
    "clumsy",
    "amusing",
    "vast",
    "fierce",
    "real",
    "helpful",
    "itchy",
    "atomic",
    "basic",
    "mysterious",
    "blurry",
    "perfect",
    "best",
    "powerful",
    "interesting",
    "decent",
    "wild",
    "jovial",
    "genuine",
    "broad",
    "brisk",
    "brilliant",
    "curved",
    "deep",
    "flat",
    "high",
    "hollow",
    "low",
    "narrow",
    "refined",
    "round",
    "shallow",
    "skinny",
    "square",
    "steep",
    "straight",
    "wide",
    "big",
    "colossal",
    "clever",
    "gigantic",
    "great",
    "huge",
    "immense",
    "large",
    "little",
    "mammoth",
    "massive",
    "micro",
    "mini",
    "petite",
    "puny",
    "scrawny",
    "short",
    "small",
    "polished",
    "teeny",
    "tiny",
    "crazy",
    "dancing",
    "custom",
    "faint",
    "harsh",
    "formal",
    "howling",
    "loud",
    "melodic",
    "noisy",
    "upbeat",
    "quiet",
    "rapping",
    "raspy",
    "rhythmic",
    "daring",
    "zany",
    "digital",
    "dizzy",
    "exotic",
    "fun",
    "furry",
    "hidden",
    "ancient",
    "brief",
    "early",
    "fast",
    "future",
    "late",
    "long",
    "modern",
    "old",
    "prehistoric",
    "zesty",
    "rapid",
    "short",
    "slow",
    "swift",
    "young",
    "acidic",
    "bitter",
    "cool",
    "creamy",
    "keen",
    "tricky",
    "fresh",
    "special",
    "unique",
    "hot",
    "magic",
    "main",
    "nutty",
    "pet",
    "mythical",
    "ripe",
    "wobbly",
    "salty",
    "savory",
    "sour",
    "spicy",
    "bright",
    "stale",
    "sweet",
    "tangy",
    "tart",
    "rich",
    "rurual",
    "urban",
    "breezy",
    "bumpy",
    "chilly",
    "cold",
    "cool",
    "cuddly",
    "damaged",
    "damp",
    "restless",
    "dry",
    "flaky",
    "fluffy",
    "virtual",
    "merry",
    "hot",
    "icy",
    "shiny",
    "melted",
    "joyous",
    "rough",
    "shaggy",
    "sharp",
    "radiant",
    "sticky",
    "strong",
    "soft",
    "uneven",
    "warm",
    "feisty",
    "cheery",
    "energetic",
    "abundant",
    "macho",
    "glorious",
    "mean",
    "quick",
    "precise",
    "stable",
    "spare",
    "sunny",
    "trendy",
    "shambolic",
    "striped",
    "boxy",
    "generous",
    "tame",
    "joyful",
    "festive",
    "bubbly",
    "soaring",
    "orbiting",
    "sparkly",
    "smooth",
    "docile",
    "original",
    "electric",
    "funny",
    "passive",
    "active",
    "cheesy",
    "tangy",
    "blunt",
    "dapper",
    "bent",
    "curly",
    "oblong",
    "sneaky",
    "overt",
    "careful",
    "jumpy",
    "bouncy",
    "recumbent",
    "cheerful",
    "droll",
    "odd",
    "suave",
    "sleepy"
  ]

  @colors [
    "white",
    "pearl",
    "alabaster",
    "snowy",
    "ivory",
    "cream",
    "cotton",
    "chiffon",
    "lace",
    "coconut",
    "linen",
    "bone",
    "daisy",
    "powder",
    "frost",
    "porcelain",
    "parchment",
    "velvet",
    "tan",
    "beige",
    "macaroon",
    "hazel",
    "felt",
    "metal",
    "gingham",
    "sand",
    "sepia",
    "latte",
    "vinyl",
    "glass",
    "hazelnut",
    "canvas",
    "wool",
    "yellow",
    "golden",
    "daffodil",
    "flaxen",
    "butter",
    "lemon",
    "mustard",
    "tartan",
    "blue",
    "cloth",
    "fiery",
    "banana",
    "plastic",
    "dijon",
    "honey",
    "blonde",
    "pineapple",
    "orange",
    "tangerine",
    "marigold",
    "cider",
    "rusty",
    "ginger",
    "tiger",
    "bronze",
    "fuzzy",
    "opaque",
    "clay",
    "carrot",
    "corduroy",
    "ceramic",
    "marmalade",
    "amber",
    "sandstone",
    "concrete",
    "red",
    "cherry",
    "hemp",
    "merlot",
    "garnet",
    "crimson",
    "ruby",
    "scarlet",
    "burlap",
    "brick",
    "bamboo",
    "mahogany",
    "blood",
    "sangria",
    "berry",
    "currant",
    "blush",
    "candy",
    "lipstick",
    "pink",
    "rose",
    "fuchsia",
    "punch",
    "watermelon",
    "rouge",
    "coral",
    "peach",
    "strawberry",
    "rosewood",
    "lemonade",
    "taffy",
    "bubblegum",
    "crepe",
    "hotpink",
    "purple",
    "mauve",
    "violet",
    "boysenberry",
    "lavender",
    "plum",
    "magenta",
    "lilac",
    "grape",
    "eggplant",
    "eggshell",
    "iris",
    "heather",
    "amethyst",
    "raisin",
    "orchid",
    "mulberry",
    "carbon",
    "slate",
    "sky",
    "navy",
    "indigo",
    "cobalt",
    "cedar",
    "ocean",
    "azure",
    "cerulean",
    "spruce",
    "stone",
    "aegean",
    "denim",
    "admiral",
    "sapphire",
    "arctic",
    "green",
    "chartreuse",
    "juniper",
    "sage",
    "lime",
    "fern",
    "olive",
    "emerald",
    "pear",
    "mossy",
    "shamrock",
    "seafoam",
    "pine",
    "mint",
    "seaweed",
    "pickle",
    "pistachio",
    "basil",
    "brown",
    "coffee",
    "chrome",
    "peanut",
    "carob",
    "hickory",
    "wooden",
    "pecan",
    "walnut",
    "caramel",
    "gingerbread",
    "syrup",
    "chocolate",
    "tortilla",
    "umber",
    "tawny",
    "brunette",
    "cinnamon",
    "glossy",
    "teal",
    "grey",
    "shadow",
    "graphite",
    "iron",
    "pewter",
    "cloud",
    "silver",
    "smoke",
    "gauze",
    "ash",
    "foggy",
    "flint",
    "charcoal",
    "pebble",
    "lead",
    "tin",
    "fossilized",
    "black",
    "ebony",
    "midnight",
    "inky",
    "oily",
    "satin",
    "onyx",
    "nylon",
    "fleece",
    "sable",
    "jetblack",
    "coal",
    "mocha",
    "obsidian",
    "jade",
    "cyan",
    "leather",
    "maroon",
    "carmine",
    "aqua",
    "chambray",
    "holographic",
    "laurel",
    "licorice",
    "khaki",
    "goldenrod",
    "malachite",
    "mandarin",
    "mango",
    "taupe",
    "aquamarine",
    "turquoise",
    "vermilion",
    "saffron",
    "cinnabar",
    "myrtle",
    "neon",
    "burgundy",
    "tangelo",
    "topaz",
    "wintergreen",
    "viridian",
    "vanilla",
    "paisley",
    "raspberry",
    "tweed",
    "pastel",
    "opal",
    "menthol",
    "champagne",
    "gunmetal",
    "infrared",
    "ultraviolet",
    "rainbow",
    "mercurial",
    "clear",
    "misty",
    "steel",
    "zinc",
    "citron",
    "cornflower",
    "lava",
    "quartz",
    "honeysuckle",
    "chili"
  ]

  @animals [
    "alligator",
    "bee",
    "bird",
    "camel",
    "cat",
    "cheetah",
    "chicken",
    "cow",
    "dog",
    "corgi",
    "eagle",
    "elephant",
    "fish",
    "fox",
    "toad",
    "giraffe",
    "hippo",
    "kangaroo",
    "kitten",
    "lobster",
    "monkey",
    "octopus",
    "pig",
    "puppy",
    "rabbit",
    "rat",
    "scorpion",
    "seal",
    "sheep",
    "snail",
    "spider",
    "tiger",
    "turtle",
    "newt",
    "tadpole",
    "frog",
    "tarantula",
    "albatross",
    "blackbird",
    "canary",
    "crow",
    "cuckoo",
    "dove",
    "pigeon",
    "falcon",
    "finch",
    "flamingo",
    "goose",
    "seagull",
    "hawk",
    "jay",
    "mockingbird",
    "kestrel",
    "kookaburra",
    "mallard",
    "nightingale",
    "nuthatch",
    "ostrich",
    "owl",
    "parakeet",
    "parrot",
    "peacock",
    "pelican",
    "penguin",
    "pheasant",
    "piranha",
    "raven",
    "robin",
    "rooster",
    "sparrow",
    "stork",
    "swallow",
    "swan",
    "swift",
    "turkey",
    "vulture",
    "woodpecker",
    "wren",
    "butterfly",
    "barbel",
    "carp",
    "cod",
    "crab",
    "eel",
    "goldfish",
    "haddock",
    "halibut",
    "jellyfish",
    "perch",
    "pike",
    "mantaray",
    "salmon",
    "sawfish",
    "scallop",
    "shark",
    "shell",
    "shrimp",
    "trout",
    "ant",
    "aphid",
    "beetle",
    "caterpillar",
    "dragonfly",
    "cricket",
    "fly",
    "grasshopper",
    "ladybug",
    "millipede",
    "moth",
    "wasp",
    "anteater",
    "antelope",
    "armadillo",
    "badger",
    "bat",
    "beaver",
    "bull",
    "chimpanzee",
    "dachshund",
    "deer",
    "dolphin",
    "elk",
    "moose",
    "gazelle",
    "gerbil",
    "goat",
    "bear",
    "hamster",
    "hare",
    "hedgehog",
    "horse",
    "hyena",
    "lion",
    "llama",
    "lynx",
    "mammoth",
    "marmot",
    "mink",
    "mole",
    "mongoose",
    "mouse",
    "mule",
    "otter",
    "panda",
    "platypus",
    "pony",
    "porcupine",
    "puma",
    "racoon",
    "reindeer",
    "rhino",
    "skunk",
    "sloth",
    "squirrel",
    "weasel",
    "snake",
    "wolf",
    "zebra",
    "boa",
    "chameleon",
    "copperhead",
    "cottonmouth",
    "crocodile",
    "rattlesnake",
    "gecko",
    "iguana",
    "lizard",
    "python",
    "salamander",
    "sidewinder",
    "whale",
    "tortoise",
    "lemur",
    "rook",
    "koala",
    "donkey",
    "ferret",
    "tardigrade",
    "orca",
    "okapi",
    "liger",
    "unicorn",
    "dragon",
    "squid",
    "ape",
    "gorilla",
    "baboon",
    "cormorant",
    "mantis",
    "tapir",
    "capybara",
    "pangolin",
    "opossum",
    "wombat",
    "aardvark",
    "starfish",
    "shetland",
    "narwhal",
    "worm",
    "hornet",
    "viper",
    "stallion",
    "jaguar",
    "panther",
    "bobcat",
    "leopard",
    "osprey",
    "cougar",
    "dalmatian",
    "terrier",
    "duck",
    "sealion",
    "raccoon",
    "chipmunk",
    "loris",
    "poodle",
    "orangutan",
    "gibbon",
    "meerkat",
    "huskie",
    "barracuda",
    "bison",
    "caribou",
    "chinchilla",
    "coyote",
    "crane",
    "dinosaur",
    "lark",
    "griffin",
    "yeti",
    "troll",
    "seahorse",
    "walrus",
    "yak",
    "wolverine",
    "boar",
    "alpaca",
    "porpoise",
    "manatee",
    "guppy",
    "condor",
    "cyborg",
    "cobra",
    "locust",
    "mandrill",
    "oyster",
    "urchin",
    "quail",
    "sardine",
    "ram",
    "starling",
    "wallaby",
    "buffalo",
    "goblin",
    "tuna",
    "mustang"
  ]

  @doc false
  def adjectives(), do: @adjectives

  @doc false
  def colors(), do: @colors

  @doc false
  def animals(), do: @animals
end
