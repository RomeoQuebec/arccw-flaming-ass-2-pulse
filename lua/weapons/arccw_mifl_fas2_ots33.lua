SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - FA:S2"
SWEP.AdminOnly = false

SWEP.PrintName = "DKKA33"
SWEP.TrueName = "OTS-33 Pernach"
SWEP.Trivia_Class = "Machine Pistol"
SWEP.Trivia_Desc = "God dammit my machine pistol is so sexy, I'm not even kidding. I literally want to have sexual intercourse with this machine pistol right now. I can't stop myself."
SWEP.Trivia_Manufacturer = "KBP Instrument Design Bureau"
SWEP.Trivia_Calibre = "9x18 Makarov"
SWEP.Trivia_Mechanism = "Blowback"
SWEP.Trivia_Country = "Russia"
SWEP.Trivia_Year = 1996

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.Slot = 1

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/mifl/fas2/c_flas_ots33.mdl"
SWEP.WorldModel = "models/weapons/arccw/mifl/fas2/c_flas_ots33.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultBodygroups = "000000000000"

SWEP.Damage = 23
SWEP.DamageMin = 16 -- damage done at maximum range
SWEP.Range = 100 -- in METRES
SWEP.Penetration = 9
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 18 -- DefaultClip is automatically set.

SWEP.PhysBulletMuzzleVelocity = 900

SWEP.Recoil = 0.55
SWEP.RecoilSide = 0.4
SWEP.RecoilRise = 1.2
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 0.5

SWEP.Delay = 60 / 900 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2
    },
    {
        Mode = 1
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 220

SWEP.AccuracyMOA = 12 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 250 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 100

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "ots33" -- the magazine pool this gun draws from

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_mifl/fas2/ots33/ots33_fire1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_mifl/fas2/ots33/glock20_suppressed_fire1.wav"
SWEP.DistantShootSound = "weapons/arccw_mifl/fas2/ots33/ots33_distance_fire1.wav"

SWEP.MeleeSwingSound = "arccw_go/m249/m249_draw.wav"
SWEP.MeleeMissSound = "weapons/iceaxe/iceaxe_swing1.wav"
SWEP.MeleeHitSound = "arccw_go/knife/knife_hitwall1.wav"
SWEP.MeleeHitNPCSound = "physics/body/body_medium_break2.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellPitch = 100
SWEP.ShellScale = 1.25
SWEP.ShellRotateAngle = Angle(0, 180, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.99
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.200

SWEP.IronSightStruct = {
    Pos = Vector(-3.32, -1.65, 1.3),
    Ang = Angle(0, 0, 0),
    Magnification = 1.05,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = false
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, -2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, -3, -2)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.HolsterPos = Vector(1, 2, 2)
SWEP.HolsterAng = Angle(-15, 5, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)
SWEP.BarrelOffsetCrouch = Vector(0, 0, -2)

SWEP.CustomizePos = Vector(6, -3, -0.5)
SWEP.CustomizeAng = Angle(4, 20, 10)

SWEP.BarrelLength = 24

SWEP.AttachmentElements = {
    ["fore_rail"] = {
        VMBodygroups = {
            {ind = 6, bg = 1},
        },
    },
    ["mifl_fas2_ots33_slide_tok"] = {
        VMBodygroups = {
            {ind = 1, bg = 1},
            {ind = 2, bg = 1},
            {ind = 3, bg = 1},
            {ind = 4, bg = 1},
        },
        Override_IronSightStruct = {
            Pos = Vector(-3.32, -1.65, 1),
            Ang = Angle(0.67, 0.02, 0),
            Magnification = 1.1
        },
    },
    ["mifl_fas2_ots33_mag_tok"] = {
        VMBodygroups = {
            {ind = 5, bg = 1},
        },
        AttPosMods = {
            [4] = {
                vpos = Vector(0, 7, 0.78),
            }
        }
    },
    ["mifl_fas2_g20_slide_17"] = {
        VMBodygroups = {
            {ind = 1, bg = 7},
        },
    },
    ["mifl_fas2_g20_slide_18c"] = {
        VMBodygroups = {
            {ind = 1, bg = 8},
            {ind = 0, bg = 1},
        },
        AttPosMods = {
            [4] = {
                vpos = Vector(0, 2.7, 0.78),
            }
        }
    },
    ["mifl_fas2_g20_slide_c"] = {
        VMBodygroups = {
            {ind = 1, bg = 6},
            {ind = 0, bg = 1},
        },
        AttPosMods = {
            [4] = {
                vpos = Vector(0, 2.3, 0.78),
            }
        }
    },
    ["mifl_fas2_g20_slide_raptor"] = {
        VMBodygroups = {
            {ind = 1, bg = 4},
        },
        AttPosMods = {
            [4] = {
                vpos = Vector(0, 5, 0.78),
            }
        }
    },
    ["mifl_fas2_g20_slide_whisper"] = {
        VMBodygroups = {
            {ind = 1, bg = 3},
        },
        AttPosMods = {
            [4] = {
                vpos = Vector(0, 7, 0.78),
            }
        }
    },
    ["mifl_fas2_g20_slide_18"] = {
        VMBodygroups = {
            {ind = 1, bg = 1}
        },
        AttPosMods = {
            [4] = {
                vpos = Vector(0, 5, 0.78),
            }
        }
    },
}

SWEP.ExtraSightDist = 7

SWEP.WorldModelOffset = {
    pos = Vector(-17, 4, -1.5),
    ang = Angle(-10, 0, 180)
}

SWEP.MirrorVMWM = true

function SWEP:Hook_ClassChange(class)
    local slide = self.Attachments[3].Installed
    if slide == "mifl_fas2_roni" then
        return "Carbine"
    elseif slide == "mifl_fas2_g20_slide_18" then
        return "Machine Pistol"
    end
    return "Pistol"
end

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = "optic_lp",
        Bone = "glock_main",
        DefaultAttName = "Iron Sights",
        Offset = {
            vpos = Vector(0, 1, 2.2),
            vang = Angle(0, -90,0),
        },
        InstalledEles = {"rail"},
        MergeSlots = {11},
        VMScale = Vector(1.25, 1.25, 1.25),
        CorrectiveAng = Angle(0, 180, 0)
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "glock_main",
        Offset = {
            vpos = Vector(0, 4.5, 0),
            vang = Angle(0, -90, 0),
        },
        InstalledEles = {"rail_2"},
        ExtraSightDist = 10,
        CorrectivePos = Vector(0.5, 2, -0.5),
        ExcludeFlags = {"mifl_fas2_g20_slide_raptor"}
    },
    {
        PrintName = "Slide",
        Slot = "mifl_fas2_ots33_slide",
        Bone = "glock_main",
        DefaultAttName = "G20 Slide",
        Offset = {
            vpos = Vector(0, 2, 0.5),
            vang = Angle(0, -90, 0),
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "glock_barrel",
        Offset = {
            vpos = Vector(0, 4.2, 0.78),
            vang = Angle(0, -90, 0),
        },
        ExcludeFlags = {"mifl_fas2_g20_slide_whisper"}
    },
    {
        PrintName = "Magazine",
        Slot = "mifl_fas2_ots33_mag",
        DefaultAttName = "18-Round 9x18 Makarov"
    },
    {
        PrintName = "Left Hand",
        Slot = {"gso_extra_pistol_akimbo", "mifl_fas2_akimbo", "akimbotest"},
        Bone = "Akimbo_Base",
        DefaultAttName = "None",
        Offset = {
            vpos = Vector(5.3, -2.5, 0.8),
            vang = Angle(0, 0, 0),
        },
        InstalledEles = {"akimbo"},
        ExcludeFlags = {"roni"},
        MergeSlots = {7},
    },
    {
        Hidden = true,
        Slot = {"mifl_fas2_lhand_shield"},
        Bone = "Akimbo_Base",
        DefaultAttName = "None",
        Offset = {
            vpos = Vector(3, -1.2, 0.8),
            vang = Angle(0, 0, 0),
        },
        InstalledEles = {"shield"},
    },
    {
        PrintName = "Stock",
        Slot = {"mifl_fas2_g20_stock"},
        DefaultAttName = "Standard Stock",
        Bone = "weapon_main",
        Offset = {
            vpos = Vector(-0.2, -1.8, -0.2),
            vang = Angle(0, -90, 0),
        },
        ExcludeFlags = {"roni"},
    },
    {
        PrintName = "Ammo Type",
        Slot = "go_ammo",
        DefaultAttName = "Standard Ammo"
    },
    {
        PrintName = "Perk",
        Slot = {"go_perk", "go_perk_pistol", "perk_fas2"}
    },
    { -- New feature just for this
        Slot = "optic",
        Bone = "glock_main",
        Offset = {
            vpos = Vector(0, 0, 3.8),
            vang = Angle(0, -90, 0),
        },
        Hidden = true,
        HideIfBlocked = true,
        RequireFlags = {"roni"},
        VMScale = Vector(1.25, 1.25, 1.25),
        CorrectiveAng = Angle(0, 180, 0)
    },
}

SWEP.Hook_SelectReloadAnimation = function(wep, anim) --- hierarchy ---

    local installed = wep.Attachments[4].Installed
    local fast = wep.Attachments[8].Installed

    if table.HasValue(wep:GetActiveElements(), "mifl_fas2_ots33_mag_tok") then
        return anim .. "_tok"
    end

    if ( installed == "mifl_fas2_ots33_mag_tok" ) and ( fast == "mifl_fas2_perk_nomen" ) and anim == "reload_nomen" then
        return "reload_nomen_tok"
    elseif ( installed == "mifl_fas2_ots33_mag_tok" ) and ( fast == "mifl_fas2_perk_nomen" ) and anim == "reload_nomen_empty" then
        return "reload_empty_nomen_tok"
    end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "Idle",
		Time = 0
    },
    ["idle_empty"] = {
        Source = "Idle_empty"
    },
    ["draw"] = {
        Source = "Draw",
    },
    ["draw_empty"] = {
        Source = "Draw_Empty",
    },
    ["holster"] = {
        Source = "Holster",
    },
    ["holster_empty"] = {
        Source = "Holster_Empty",
    },
    ["ready"] = {
        Source = "Draw",
    },
    ["fire"] = {
        Source = {"Fire1","fire2","fire3"},
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "Fire_Iron",
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "Fire_Last",
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "Fire_Last_Iron",
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "Reload_Wet",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "Reload_Dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5,
    },
    ["reload_nomen"] = {
        Source = "Fast_Reload_Wet",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.6,
        LHIKEaseOut = 0.4,
    },
    ["reload_nomen_empty"] = {
        Source = "Fast_Reload_Dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5,
    },
---------------------------------------------------------
    ["reload_tok"] = {
        Source = "Reload_Wet_Tok",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5,
    },
    ["reload_empty_tok"] = {
        Source = "Reload_Dry_Tok",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5,
    },
    ["reload_nomen_tok"] = {
        Source = "Fast_Reload_Wet_Tok",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.6,
        LHIKEaseOut = 0.4,
    },
    ["reload_empty_nomen_tok"] = {
        Source = "Fast_Reload_Dry_Tok",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 1,
        LHIKEaseOut = 0.4,
    },
}