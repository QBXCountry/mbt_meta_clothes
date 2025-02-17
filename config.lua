MBT = {}
MBT.Debug = false

MBT.Language = "EN"

MBT.Framework = "QB" -- OX/ESX/QB

MBT.MenuKey = "J"

MBT.Labels = {
    ["IT"] = {
        ["nothing_to_unwear"] = "Non hai niente da toglierti!",
        ["props_desc"] = "Accessorio appartenente a %s",
        ["clothes_desc"] = "Capo di abbigliamento appartenente a %s",
        ["ear_acc"] = "Accessori",
        ["glasses"] = "Occhiali",
        ["chain"] = "Accessorio",
        ["hats"] = "Copricapi",
        ["arms"] = "Braccia",
        ["legs"] = "Pantaloni",
        ["foot"] = "Scarpe",
        ["t_shirt"] = "TShirt",
        ["jacket"] = "Giacca",
        ["watch"] = "Orologio",
        ["sett_name"] = "Menú Vestiti"
    },
    ["EN"] = {
        ["nothing_to_unwear"] = "You don't have any clothes to take off!",
        ["props_desc"] = "Accessory belonging to %s",
        ["clothes_desc"] = "Piece of clothing belonging to %s",
        ["ear_acc"] = "Ear Accessories",
        ["glasses"] = "Glasses",
        ["chain"] = "Torso Accessories",
        ["hats"] = "Hats",
        ["arms"] = "Arms",
        ["legs"] = "Legs",
        ["foot"] = "Foot",
        ["t_shirt"] = "TShirt",
        ["jacket"] = "Jacket",
        ["watch"] = "Watch",
        ["sett_name"] = "Clothes Menu"
    },
}

MBT.Drawables = {
    [3] = {
        ["Label"] = MBT.Labels[MBT.Language]["arms"],
        ["Default"] = {
            ["male"] = { 15 },
            ["female"] = { 15 }
        }
    },
    [4] = {
        ["Label"] = MBT.Labels[MBT.Language]["legs"],
        ["Default"] = {
            ["male"] = { 21, 21 },
            ["female"] = { 14, 105 }
        },
        ["Animation"] = { ["Dict"] = "re@construction", ["Anim"] = "out_of_breath", ["Flag"] = 51, ["Duration"] = 1300 },
        ["Item"] = "trousers"
    },
    [6] = {
        ["Label"] = MBT.Labels[MBT.Language]["foot"],
        ["Default"] = {
            ["male"] = { 34 },
            ["female"] = { 118 }
        },
        ["Animation"] = { ["Dict"] = "random@domestic", ["Anim"] = "pickup_low", ["Flag"] = 0, ["Duration"] = 1200 },
        ["Item"] = "shoes"
    },
    [7] = {
        ["Label"] = MBT.Labels[MBT.Language]["chain"],
        ["Default"] = {
            ["male"] = { 0 },
            ["female"] = { 0 }
        },
        ["Animation"] = { ["Dict"] = "clothingtie", ["Anim"] = "try_tie_positive_a", ["Flag"] = 0, ["Duration"] = 2500 },
        ["Item"] = "chain"
    },
    [8] = {
        ["Label"] = MBT.Labels[MBT.Language]["t_shirt"],
        ["Default"] = {
            ["male"] = { 15 },
            ["female"] = { 15 }
        },
        ["Animation"] = { ["Dict"] = "clothingshirt", ["Anim"] = "try_shirt_positive_d", ["Flag"] = 51,
            ["Duration"] = 1200 }
    },
    [11] = {
        ["Label"] = MBT.Labels[MBT.Language]["jacket"],
        ["Default"] = {
            ["male"] = { 15 },
            ["female"] = { 15 }
        },
        ["Item"] = "jacket"
    }
}

MBT.Props = {
    [0] = {
        ["Label"] = MBT.Labels[MBT.Language]["hats"],
        ["Default"] = {
            ["male"] = {-1},
            ["female"] = {-1}
        },
        ["Animation"] = { ["Dict"] = "missheist_agency2ahelmet", ["Anim"] = "take_off_helmet_stand", ["Flag"] = 51, ["Duration"] = 600 },
        ["Item"] = "hat"
    },
    [1] = {
        ["Label"] = MBT.Labels[MBT.Language]["glasses"],
        ["Default"] = {
            ["male"] = {-1},
            ["female"] = {-1}
        },
        ["Animation"] = { ["Dict"] = "clothingspecs", ["Anim"] = "take_off", ["Flag"] = 51, ["Duration"] = 1400 },
        ["Item"] = "glasses"
    },
    [2] = {
        ["Label"] = MBT.Labels[MBT.Language]["ear_acc"],
        ["Default"] = {
            ["male"] = {-1},
            ["female"] = {-1}
        },
        ["Animation"] = { ["Dict"] = "mp_cp_stolen_tut", ["Anim"] = "b_think", ["Flag"] = 51, ["Duration"] = 900 },
        ["Item"] = "earaccess"
    },
    [6] = {
        ["Label"] = MBT.Labels[MBT.Language]["watch"],
        ["Default"] = {
            ["male"] = {-1},
            ["female"] = {-1}
        },
        ["Animation"] = { ["Dict"] = "nmt_3_rcm-10", ["Anim"] = "cs_nigel_dual-10", ["Flag"] = 51, ["Duration"] = 900 },
        ["Item"] = "watch"
    },
}


MBT.NotifyHandler = function(text, type)
    exports.qbx_core:Notify(text, type)
    --[[
        text = "Lorem Ipsum"
        type = "error" / "info" / "warning"
    ]]

   -- Put your notify here 
   -- Notify({ msg = text, title = "Clothes", style = "dark", type = type or "error", icon = "fa-solid fa-campground", position = "bottom-right", duration = 5000, sound = type or "error" })

end
