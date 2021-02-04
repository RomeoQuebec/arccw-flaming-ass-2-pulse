att.PrintName = "Left M79"
att.Icon = Material("entities/arccw_mifl_fas2_akimbo_m79.png", "smooth")
att.Description = "It's already small enough."
att.Hidden = false
att.Desc_Pros = {
    "pro.fas2.akimbo",
}
att.Desc_Cons = {
    "con.fas2.akimbo"
}
att.AutoStats = true
att.Mult_HipDispersion = 2
att.Slot = "mifl_fas2_akimbo"

att.ModelOffset = Vector(1, -0.5, 0)

att.GivesFlags = {"handlocked"}

att.ModelScale = Vector(1, 1, 1)

att.SortOrder = 700 + 3

att.AddSuffix = " + M79"

att.MountPositionOverride = 0

att.Model = "models/weapons/arccw/mifl_atts/fas2/c_m79.mdl"

att.LHIK = true
att.LHIK_Animation = true
att.LHIK_MovementMult = 0

att.UBGL = true

att.UBGL_PrintName = "AKIMBO"
att.UBGL_Automatic = false
att.UBGL_MuzzleEffect = "muzzleflash_pistol"
att.UBGL_ClipSize = 7
att.UBGL_Ammo = "pistol"
att.UBGL_RPM = 600
att.UBGL_Recoil = 1.8
att.UBGL_RecoilSide = .8
att.UBGL_RecoilRise = 1.2
att.UBGL_Capacity = 1

att.Hook_ShouldNotSight = function(wep)
    return true
end

att.Hook_Think = function(wep)
    if !IsFirstTimePredicted() then return end
    if wep:GetOwner():KeyPressed(IN_RELOAD) then
        wep:SetInUBGL(false)
        wep:ReloadUBGL()
        --wep:Reload()
    elseif wep:GetOwner():KeyPressed(IN_ATTACK) then
        wep:SetInUBGL(false)
    elseif wep:GetOwner():KeyPressed(IN_ATTACK2) then
        wep:SetInUBGL(true)
        wep:ShootUBGL()
    end
end

att.Hook_LHIK_TranslateAnimation = function(wep, anim)
    if anim == "idle" and wep:Clip2() <= 0 then
        return "idle_empty"
    end
end

local function Ammo(wep)
    return wep.Owner:GetAmmoCount("pistol") -- att.UBGL_Ammo
end

att.UBGL_Fire = function(wep, ubgl)
    if wep:Clip2() <= 0 then return end

    wep:FireRocket("arccw_mifl_fas2_m203", 1500)
	
    wep:EmitSound("weapons/arccw_mifl/fas2/explosive_m79/m79_fire1.wav", 110, 100 * math.Rand(1 - 0.05, 1 + 0.05))
                            -- This is kinda important
                                            -- Wep volume
                                                    -- Weapon pitch (along with the pitch randomizer)
    wep:PlaySoundTable({
            {s = "weapons/arccw_mifl/fas2/explosive_m79/m79_distance_fire1.wav",			t = 0},
	})													
    wep:SetClip2(wep:Clip2() - 1)
    
    wep:DoLHIKAnimation("fire", 25/60)


    wep:DoEffects()
end

att.UBGL_Reload = function(wep, ubgl)
    wep:Reload()

    local clip = 1

    if wep:Clip2() >= clip then return end -- att.UBGL_Capacity

    if wep:Clip2() >= 1 then return end
    if Ammo(wep) <= 0 then return end
    if wep:Clip2() == 0 then	
        wep:DoLHIKAnimation("reload", 3.25)
        wep:SetNextSecondaryFire(CurTime() + 3.25)
        wep:PlaySoundTable({
            {s = "weapons/arccw_mifl/fas2/explosive_m79/m79_open.wav", 	t = 15/60},
            {s = "weapons/arccw_mifl/fas2/explosive_m79/m79_remove.wav", 	    t = 50/60},			
            {s = "weapons/arccw_mifl/fas2/explosive_m79/m79_insert.wav", 	    t = 100/60},
            {s = "weapons/arccw_mifl/fas2/explosive_m79/m79_close.wav", 	t = 155/60},
        })
    end

    local reserve = Ammo(wep)

    reserve = reserve + wep:Clip2()

    local load = math.Clamp(clip, 0, reserve)

    wep.Owner:SetAmmo(reserve - load, "pistol") -- att.UBGL_Ammo

    wep:SetClip2(load)
end