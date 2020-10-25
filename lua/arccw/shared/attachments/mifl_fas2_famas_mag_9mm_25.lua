att.PrintName = "25-Round 9mm"
att.Icon = Material("entities/arccw_mifl_fas2_m4a1_ammo_32.png", "mips smooth")
att.Description = "Conversion to 9mm allows for faster firing rate and a few more rounds at the cost of range."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.SortOrder = 25
att.AutoStats = true
att.Slot = {"mifl_fas2_famas_mag"}

att.ActivateElements = {"25"}

att.Mult_SightedSpeedMult = 1.12

att.Mult_Range = 0.75
att.Mult_Penetration = 0.5
att.Mult_Recoil = 0.79
att.Mult_SightTime = 0.82
att.Mult_RPM = 1.35
att.Mult_AccuracyMOA = 2.1
att.Override_ClipSize = 25
att.Mult_Damage = 0.8
att.Mult_DamageMin = 0.75
att.Mult_ShootPitch = 0.9
att.Mult_ReloadTime = 0.9

att.Override_Ammo = "pistol"

att.Override_ShellModel = "models/shells/shell_9mm.mdl"

att.Override_Trivia_Class = "Submachine Gun"
att.Override_Trivia_Calibre = "9x19mm Parabellum"

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == "weapons/arccw_mifl/fas2/m4a1/m4_fire1.wav" then return "weapons/arccw_mifl/fas2/mac11/mac11_fire1.wav" end
    if fsound == "weapons/arccw_mifl/fas2/m4a1/m4_suppressed_fire1.wav" then return "weapons/arccw_mifl/fas2/mac11/mac11_suppressed_fire1.wav" end
	
end

att.AddSuffix = " A9"