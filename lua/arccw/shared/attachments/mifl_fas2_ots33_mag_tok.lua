att.PrintName = "20-Round 7.62x25mm Tokarev Magazine"
att.Icon = Material("entities/arccw_mifl_fas2_g20_8.png", "mips smooth")
att.Description = "Conversion to .50 GI to ruin your wrist, your gun, and whatever happens to be in front of you. This shouldn't be working at all, yet here you are, using it."
att.Desc_Pros = {
    "pro.magcap"
}
att.Desc_Cons = {
}
att.SortOrder = 8
att.AutoStats = true
att.Slot = "mifl_fas2_ots33_mag"

att.ActivateElements = {"mifl_fas2_ots33_mag_tok"}

att.Override_ClipSize = 20

att.Mult_RPM = 1.32
att.Mult_Damage = 0.97
att.Mult_DamageMin = 0.82
att.Mult_ReloadTime = 1.05
att.Mult_Penetration = 2

att.Mult_Recoil = 0.95
att.Mult_RecoilSide = 0.92
att.Mult_VisualRecoilMult = 0.81

att.Mult_ShootPitch = 1.15

att.Override_Ammo = "smg1"
att.Override_Trivia_Calibre = "7.62x25mm Tokarev"