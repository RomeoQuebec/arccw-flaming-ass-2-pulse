att.PrintName = "M79 Flash"
att.Icon = nil --Material("entities/arccw_mifl_fas2_ak_mag_762s.png", "mips smooth")
att.Description = "A grenade that creates a blinding flash."
att.Desc_Pros = {
    "Creates flash on detonation"
}
att.Desc_Cons = {
    "Minimal damage"
}
att.SortOrder = 1.5

att.Slot = "mifl_fas2_m79_ammo"
att.Override_ShootEntity = "arccw_gl_m79_flash"