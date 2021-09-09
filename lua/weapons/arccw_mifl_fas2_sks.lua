SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - FA:S2" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Ustarevshaya"
SWEP.TrueName = "SKS"
SWEP.Trivia_Class = "Semi-automatic Carbine"
SWEP.Trivia_Desc = "Big revolver firing a big cartridge, useful for sending people straight to Brazil (coincidentally the country of origin). Because of the uncommon cartridge and size, there is no speedloader."
SWEP.Trivia_Manufacturer = "Tula Arsenal"
SWEP.Trivia_Calibre = "	7.62×39mm M43"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "Soviet Union"
SWEP.Trivia_Year = "1945"

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 150

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/mifl/fas2/c_flas_sks.mdl"
SWEP.WorldModel = "models/weapons/arccw/mifl/fas2/c_flas_sks.mdl"
SWEP.ViewModelFOV = 57

SWEP.WorldModelOffset = {
    pos = Vector(-17, 5.5, -5),
    ang = Angle(-10, 0, 180)
}
SWEP.MirrorVMWM = true
SWEP.Damage = 63
SWEP.DamageMin = 49 -- damage done at maximum range
SWEP.Range = 400 -- in METRES
SWEP.Penetration = 15
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 735 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = false

SWEP.PhysBulletMuzzleVelocity = 800

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 10 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 20
SWEP.ReducedClipSize = 5

SWEP.Recoil = 3
SWEP.RecoilSide = 1.75
SWEP.RecoilRise = 1.3
SWEP.MaxRecoilBlowback = 3

SWEP.Delay = 60 / 350 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 250 -- inaccuracy added by hip firing.

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses
SWEP.MagID = "gce" -- the magazine pool this gun draws from

SWEP.ShootVol = 130 -- volume of shoot sound
SWEP.ShootPitch = 95 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_mifl/fas2/sks/sks_fire1.wav"
SWEP.DistantShootSound = "weapons/arccw_mifl/fas2/sks/sks_distance_fire1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_mifl/fas2/sks/sks_suppressed_fire1.wav"

SWEP.MuzzleEffect = "muzzleflash_3"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 95
SWEP.ShellScale = 1.25

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.325

SWEP.SpeedMult = 0.975
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 18

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-4.25, -2.11, 3.25),
    Ang = Angle(-0.25, 0.025, 0),
    Magnification = 1.05,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, -1, 2)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-1, -2, -0.2)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.HolsterPos = Vector(1, 2, 2)
SWEP.HolsterAng = Angle(-15, 5, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 5

SWEP.AttachmentElements = {
    ["mifl_fas2_sks_20_int_mag"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },
    ["mifl_fas2_sks_20_mag"] = {
        VMBodygroups = {{ind = 5, bg = 2}},
    },			
    ["mifl_fas2_sks_30_mag"] = {
        VMBodygroups = {{ind = 5, bg = 3}},
    },		
    ["mifl_fas2_sks_ginata"] = {
        VMBodygroups = {{ind = 4, bg = 3}},
    },
    ["mifl_fas2_sks_b_long"] = {
        NameChange = "Sniper",	
        VMBodygroups = {{ind = 4, bg = 2}},
    },
    ["mifl_fas2_sks_b_short"] = {
        NameChange = "Carbiner",	
        VMBodygroups = {{ind = 2, bg = 3}},
    },
    ["mifl_fas2_sks_b_kurz"] = {
        VMBodygroups = {
            {ind = 1, bg = 1},
            {ind = 2, bg = 1},
            {ind = 4, bg = 4},
        },
    },	
    ["mifl_fas2_sks_b_cqc"] = {
        TrueNameChange = "CQC",
        VMBodygroups = {{ind = 4, bg = 1}},
    },
    ["rail"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = { "optic_lp", "optic", "optic_sniper"},
        Bone = "Dummy01",
        Offset = {
            vpos = Vector(2, -3.4, 0),
            vang = Angle(0, 0, -90),
        },
        VMScale = Vector(1.2, 1.2, 1.2),
        InstalledEles = {"rail"},
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "Standard Barrel",
        Slot = "mifl_fas2_sks_barrel",
        Bone = "Dummy01",
        Offset = {
            vpos = Vector(25, 0.7, 0),
            vang = Angle(0, 0, 0),
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Dummy01",
        Offset = {
            vpos = Vector(8, -2, 0),
            vang = Angle(0, 0, -90),
        },
        ExtraSightDist = 15,
        CorrectivePos = Vector(0.4, -2, -0.25),
        ExcludeFlags = {"mifl_fas2_sks_b_kurz"}
    },
    {
        PrintName = "Magazine",
        DefaultAttName = "10 Round Internal Magazine",		
        Slot = "mifl_fas2_sks_mag",
        Bone = "Dummy01",
        Offset = {
            vpos = Vector(4.2, -2, 0),
            vang = Angle(0,0, -90),
        },
    },	
    {
        PrintName = "Ammo Type",
        Slot = "go_ammo",
        DefaultAttName = "Standard Ammo"
    },
    {
        PrintName = "Perk",
        Slot = {"go_perk", "perk_fas2"}
    },
}

SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    local nomen = (wep:GetBuff_Override("Override_FAS2NomenBackup") and "_nomen") or ""

    local reloadtime = (wep.Primary.ClipSize - wep:Clip1())

    local bullshit = wep.Attachments[4].Installed == "mifl_fas2_sks_20_int_mag"
        if bullshit then
        return anim .. "_20" .. nomen
    end

    local rpkst = wep.Attachments[4].Installed == "mifl_fas2_sks_20_mag"

    local fucking = wep.Attachments[4].Installed == "mifl_fas2_sks_30_mag"
        if fucking or rpkst then 
        return anim .. "_30" .. nomen
    end

    if wep:Clip1() <= 0 then
        return "Reload_empty" .. nomen
    elseif wep:Clip1() <= 0 and fucking or rpkst then
        return "reload_30_empty" .. nomen
    end

    return "Reload" .. reloadtime .. nomen
end

SWEP.Animations = {
    ["idle"] = {
        Source = {"idle_scoped"},
    },
    ["idle_empty"] = {
        Source = {"idle01_empty","idle02_empty"},
    },
    ["ready"] = {
        Source = "draw",
    },
    ["draw"] = {
        Source = "draw",
    },
    ["draw_empty"] = {
        Source = "draw_empty",
    },
    ["holster"] = {
        Source = "holster",
    },
    ["holster_empty"] = {
        Source = "holster_empty",
    },
    ["fire"] = {
        Source = {"Fire01","fire02","fire03"},
    },
    ["melee"] = {
        Source = "melee",
    },
    ["melee_empty"] = {
        Source = "melee_empty",
    },
    ["fire_iron"] = {
        Source = "Fire_Scoped",
    },
    ["Reload_empty"] = {
        Source = "Reload_empty",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3		
    },
    ["Reload1"] = {
        Source = "Reload9",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,
        SoundTable = {
            {t = 0.8, e = "arccw_shell_fas2_762" },
            {t = 0.8, e = "arccw_shell_fas2_762" },
            {t = 0.8, e = "arccw_shell_fas2_762" },
            {t = 0.8, e = "arccw_shell_fas2_762" },
            {t = 0.8, e = "arccw_shell_fas2_762" },	
            {t = 0.8, e = "arccw_shell_fas2_762" },
            {t = 0.8, e = "arccw_shell_fas2_762" },
            {t = 0.8, e = "arccw_shell_fas2_762" },	
            {t = 0.8, e = "arccw_shell_fas2_762" },					
        },			
    },
    ["Reload2"] = {
        Source = "Reload3",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,
        SoundTable = {
            {t = 0.8, e = "arccw_shell_fas2_762" },	
            {t = 0.8, e = "arccw_shell_fas2_762" },
            {t = 0.8, e = "arccw_shell_fas2_762" },
            {t = 0.8, e = "arccw_shell_fas2_762" },	
            {t = 0.8, e = "arccw_shell_fas2_762" },
            {t = 0.8, e = "arccw_shell_fas2_762" },
            {t = 0.8, e = "arccw_shell_fas2_762" },	
            {t = 0.8, e = "arccw_shell_fas2_762" },					
        },			
    },
    ["Reload3"] = {
        Source = "Reload3",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,
        SoundTable = {
            {t = 0.8, e = "arccw_shell_fas2_762" },
            {t = 0.8, e = "arccw_shell_fas2_762" },
            {t = 0.8, e = "arccw_shell_fas2_762" },
            {t = 0.8, e = "arccw_shell_fas2_762" },
            {t = 0.8, e = "arccw_shell_fas2_762" },
            {t = 0.8, e = "arccw_shell_fas2_762" },	
            {t = 0.8, e = "arccw_shell_fas2_762" },			
        },			
    },
    ["Reload4"] = {
        Source = "Reload4",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3		
    },
    ["Reload5"] = {
        Source = "Reload5",
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.25	
    },
    ["Reload6"] = {
        Source = "Reload6",
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.25		
    },
    ["Reload7"] = {
        Source = "Reload7",
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.25
    },
    ["Reload8"] = {
        Source = "Reload8",
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.25
    },
    ["Reload9"] = {
        Source = "Reload1",
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.25
    },
-- Different mags
    ["reload_20"] = {
        Source = "Reload_20_add",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3		
    },
    ["reload_empty_20"] = {
        Source = "Reload_20_empty",
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.25	
    },
    ["reload_20_nomen"] = {
        Source = "Reload_20_add_nmc",
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.25		
    },
    ["reload_empty_20_nomen"] = {
        Source = "Reload_20_empty_nmc",
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.25
    },
    ["reload_30"] = {
        Source = "Reload_30",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3		
    },
    ["reload_empty_30"] = {
        Source = "Reload_30_empty",
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.25	
    },
    ["reload_30_nomen"] = {
        Source = "Reload_30_nmc",
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.25		
    },
    ["reload_empty_30_nomen"] = {
        Source = "Reload_30_empty_nmc",
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.25
    },
-- Nomen
    ["reload_empty_nomen"] = {
        Source = "Reload_empty_nmc",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,
        SoundTable = {
            {t = 0.75, e = "arccw_shell_fas2_762" },		
        },
    },
    ["reload1_nomen"] = {
        Source = "Reload9_nmc",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,
        SoundTable = {
            {t = 0.75, e = "arccw_shell_fas2_762" },		
        },		
    },
    ["reload2_nomen"] = {
        Source = "Reload8_nmc",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,
        SoundTable = {
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },			
        },			
    },
    ["reload3_nomen"] = {
        Source = "Reload7_nmc",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,
        SoundTable = {
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },			
        },			
    },
    ["reload4_nomen"] = {
        Source = "Reload6_nmc",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,
        SoundTable = {
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },			
        },			
    },
    ["reload5_nomen"] = {
        Source = "Reload5_nmc",
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.25,
        SoundTable = {
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },	
            {t = 0.65, e = "arccw_shell_fas2_762" },			
        },			
    },
    ["reload6_nomen"] = {
        Source = "Reload4_nmc",
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.25,
        SoundTable = {
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },	
            {t = 0.65, e = "arccw_shell_fas2_762" },			
        },			
    },
    ["reload7_nomen"] = {
        Source = "Reload3_nomen",
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.25,
        SoundTable = {
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },	
            {t = 0.65, e = "arccw_shell_fas2_762" },			
        },			
    },
    ["reload8_nomen"] = {
        Source = "Reload2_nmc",
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.25,
        SoundTable = {
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },	
            {t = 0.65, e = "arccw_shell_fas2_762" },			
        },			
    },
    ["reload9_nomen"] = {
        Source = "Reload1_nmc",
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.25,
        SoundTable = {
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },
            {t = 0.65, e = "arccw_shell_fas2_762" },	
            {t = 0.65, e = "arccw_shell_fas2_762" },			
        },			
    },
}