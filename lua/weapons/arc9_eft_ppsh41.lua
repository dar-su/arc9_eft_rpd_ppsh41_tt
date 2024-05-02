AddCSLuaFile()

SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_smg")
-- SWEP.SubCategory = "_Not for your eyesss"
SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
    [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "Mal0", 
    [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}

ARC9:AddPhrase("eft_weapon_ppsh41", "PPSh-41", "en")
ARC9:AddPhrase("eft_weapon_ppsh41", "ППШ-41", "ru")
ARC9:AddPhrase("eft_weapon_ppsh41", "PP shhh 41", "uwu")
SWEP.PrintName = ARC9:GetPhrase("eft_weapon_ppsh41")
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_smg")
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "Numerous",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "7.62x25mm Tokarev",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"] = ARC9:GetPhrase("eft_trivia_act_blow"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_ussr"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "1940"
}

SWEP.Description = [[The PPSh-41 (Pistolet-Pulemyot Shpagina - "Shpagin's submachine gun") is a Soviet submachine gun designed by Georgy Shpagin as a cheap, reliable, and simplified alternative to the PPD-40.]]


SWEP.StandardPresets = {
    -- "[FSB]XQAAAQCWAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD858hFKrq+xXePmJfpPpQndI9fB5smK9tq7fFmw9sMkVWQ2HJtxt0Qgd5jA4HM51gXvvn0DN6Pkvjr68H+JzPQdkcgYThCcRXnJexa5btl0H33kvxEpjKOsa1fxjRXtfg1RvgScrgUCvJongbG/5LNTFaaG0KGqZwWb9JTfgilaREHvAqF3Kf4IlobOAA=",
    -- "[TAC]XQAAAQDhAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD858hFKrq+xXePmJfpPpQndI9fB5smK9tq7fFmw9sMkVWQ2HJtxt0Qgd5jA4HM51gXzhvulynGekGJGVIhcLPf+Jv5hRTEj/HRIyfj/4fUjQFyIXiWDKV2GlLiAh7p5tvo7ZKlYWztA1uHgzjrTpMcHxP3Tj0fPr+FlSMab65nVHwyUJyvLCLAmd6v4YOxx0xwtWTP2xvgV16YtKzG+/uDPGDC9p6PMe/mYAA="
}

SWEP.BarrelLength = 17
SWEP.Slot = 2
SWEP.WorldModel = "models/weapons/w_smg_mac10.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_ppsh41.mdl"
SWEP.ViewModelFOVBase = 65
SWEP.MirrorVMWM = true
SWEP.DefaultBodygroups = "000000000000000000"


------------------------- [[[           STATS            ]]] -------------------------

-- pst dmg

SWEP.DamageMax = 50 * 0.5
SWEP.DamageMin = 31.7 * 0.5
SWEP.PhysBulletMuzzleVelocity = 430 /0.0254

SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254 * 1

SWEP.Penetration =      25 *2.54/100/0.0254
SWEP.PenetrationDelta = 36/100
SWEP.ArmorPiercing =    36/100
SWEP.RicochetChance =   10/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    50 * 0.5     },

    {   100 /0.0254 * 1, 
    43.67 * 0.5     },

    {   200 /0.0254 * 1, 
    41 * 0.5     },

    {   300 /0.0254 * 1, 
    39 * 0.5     },

    {   400 /0.0254 * 1, 
    37.64 * 0.5     },

    {   500 /0.0254 * 1, 
    36.35 * 0.5     },

    {   600 /0.0254 * 1, 
    35.2 * 0.5     },

    {   700 /0.0254 * 1, 
    34.2 * 0.5     },

    {   800 /0.0254 * 1, 
    33.3 * 0.5     },

    {   900 /0.0254 * 1, 
    32.5 * 0.5     },

    {   1000 /0.0254 * 1, 
    31.7 * 0.5     },
}

--          Spread
SWEP.Spread = 3.44 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015


--          Recoil
-- touch these

SWEP.Recoil = 0.85 -- general multiplier of main recoil

SWEP.RecoilUp   = 3   -- up recoil
SWEP.RecoilSide = 1.1 -- sideways recoil
SWEP.RecoilRandomUp   = 0.75 -- random up/down
SWEP.RecoilRandomSide = 0.4   -- random left/right

SWEP.RecoilAutoControl = 2.75 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1 -- general multiplier for it

local EFT_VisualRecoilUp_BURST_SEMI   = 0.15   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.6   --   when fullautoing
local EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.13   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 1 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 7 -- same but in sights only

SWEP.VisualRecoilDampingConst = 200  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.1 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
local EFT_ShotsToSwitchToFullAutoBehaviur = 3 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.145 -- camera roll each shot + makes camera go more up when fullautoing

-- dont touch this i guess

SWEP.RecoilMultHipFire = 1
SWEP.RecoilMultCrouch = 0.75
SWEP.RecoilUpMultFirstShot = 0.85
SWEP.RecoilUpMultRecoil = 1.2

SWEP.RecoilDissipationRate = 5
SWEP.RecoilAutoControlMultHipFire = 0.75
SWEP.RecoilAutoControl_DontTryToReturnBack = true
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.2

SWEP.UseVisualRecoil = true 
SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilMultCrouch = 0.75

SWEP.VisualRecoilDampingConstMultFirstShot = 3

-- SWEP.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
--     return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
-- end

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount, self)
    local fullauto = math.Clamp(recamount - EFT_ShotsToSwitchToFullAutoBehaviur, 0, 3) * 0.33333333
    up = Lerp(fullauto, EFT_VisualRecoilUp_BURST_SEMI, up)
    side = Lerp(fullauto, EFT_VisualRecoilSide_BURST_SEMI, side)

    if recamount < 2 then
        if self:GetSightAmount() < 0.2 then up = 1 end -- only for visual when hipfiring
    end

    return up, side, roll, punch
end

SWEP.RecoilKickAffectPitch = true
SWEP.RecoilKickDamping = 10


--          Heating

SWEP.Malfunction = false 
SWEP.MalfunctionNeverLastShoot = false 
SWEP.MalfunctionMeanShotsToFail = 583*1.5
SWEP.MalfunctionMeanShotsToFailMultHot = -0.2
SWEP.Overheat = true
SWEP.HeatCapacity = 240
SWEP.HeatDissipation = 2.5
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false
SWEP.MalfunctionWait = 0


--          Firemodes

SWEP.RPM = 1000
-- SWEP.Firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 1},
    { Mode = 1, PoseParam = 2 }
}

--          Speed

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.35

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.5
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1


--          Other

SWEP.FreeAimRadius = 2
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 1
SWEP.SwayMove = 0.5
SWEP.SwayMidAir = 10
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultHipFire = 0.2
SWEP.SwayMultSights = 0.25
SWEP.HoldBreathTime = 40
SWEP.RestoreBreathTime = 30
SWEP.BreathInSound = false 
SWEP.BreathOutSound = false
SWEP.BreathRunOutSound = "arc9_eft_shared/bear3_breath_sprint.ogg"

--          Generic stats

SWEP.Ammo = "pistol"
SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 0 -- actual chamber (no mag)
SWEP.SupplyLimit = 4
SWEP.SecondarySupplyLimit = 4
SWEP.ReloadInSights = true
SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false -- !!
SWEP.DropMagazineSounds = {}
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.74
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(-180, 180, 0)
SWEP.DropMagazineVelocity = Vector(20, 0, 10)
SWEP.Bash = false
SWEP.PrimaryBash = false
SWEP.TracerNum = 0
SWEP.TracerColor = Color(255, 225, 200)



------------------------- [[[           Other            ]]] -------------------------

--          Positions and offsets

SWEP.IronSights = {
    Pos = Vector(-4.27, -7, 1.05),
    Ang = Angle(0, 0.4, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4, -0.27)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(50, 10, -45)
SWEP.SprintPos = Vector(4, -5, 0)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(18, 27, 6)
SWEP.CustomizeSnapshotFOV = 95
SWEP.CustomizeRotateAnchor = Vector(15.5, -4.28, -5.23)


--          Third person stuff

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "physgun"

SWEP.WorldModelOffset = {
    Pos = Vector(-13, 5.4, -4),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 5, -4), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN


--          Effects

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 0.8
SWEP.CamQCA_Mult_ADS = 0.05

SWEP.MuzzleParticle = "muzzleflash_smg"

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/762x25tt.mdl"
SWEP.ShellScale = 1
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)


SWEP.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag0",
    [3] = "patron_in_mag1",
    [4] = "patron_in_mag2",
    [5] = "patron_in_mag3",
}

------------------------- [[[           Sounds            ]]] -------------------------

local path = "weapons/darsu_eft/ppsh41/"

SWEP.ShootPitchVariation = 0
SWEP.DistantShootVolume = 0.05
SWEP.DistantShootVolumeActual = 0.05

SWEP.ShootSound = { path .. "fire/ppsh_outdoor_close_loop1.ogg", path .. "fire/ppsh_outdoor_close_loop2.ogg", path .. "fire/ppsh_outdoor_close_loop3.ogg", path .. "fire/ppsh_outdoor_close_loop4.ogg" }
SWEP.LayerSound = path .. "fire/ppsh_outdoor_close_loopt.ogg"

SWEP.ShootSoundIndoor = { path .. "fire/ppsh_indoor_close_loop1.ogg", path .. "fire/ppsh_indoor_close_loop2.ogg", path .. "fire/ppsh_indoor_close_loop3.ogg", path .. "fire/ppsh_indoor_close_loop4.ogg" }
SWEP.LayerSoundIndoor = path .. "fire/ppsh_indoor_close_loopt.ogg"

SWEP.DistantShootSound = { path .. "fire/ppsh_outdoor_distant_loop1.ogg", path .. "fire/ppsh_outdoor_distant_loop2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "fire/ppsh_indoor_distant_loop1.ogg", path .. "fire/ppsh_indoor_distant_loop2.ogg" }


SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = "" -- we will have own in sound tables
SWEP.DryFireSound = "" -- we will have own in sound tables


SWEP.EnterSightsSound = ARC9EFT.ADSSMG
SWEP.ExitSightsSound = ARC9EFT.ADSSMG


SWEP.SuppressEmptySuffix = true 

------------------------- [[[           Hooks & functions            ]]] -------------------------



------------------------- [[[           Animations            ]]] -------------------------

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag0",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3"
    },
}


SWEP.Hook_TranslateAnimation = function(swep, anim)
        local elements = swep:GetElements()
    
        local ending = ""
    
        -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
        -- local rand = 0
        local nomag = false
    
        if elements["eft_ppsh41_mag_71"] then ending = 0
        elseif elements["eft_ppsh41_mag_35"] then ending = 1
        else nomag = true end
    
        -- local empty = swep:Clip1() == 0 and !nomag
        local empty = swep:Clip1() == 0 and !swep:GetEFTArmedDryfire() or nomag
        
        -- 0 looking
        -- 1 slide check  (!empty)
        -- 2 mag checking  (!nomag)
        
        if anim == "inspect" or anim == "inspect_empty" then
            swep.EFTInspectnum = swep.EFTInspectnum or 0
            if IsFirstTimePredicted() then
                swep.EFTInspectnum = swep.EFTInspectnum + 1
            end
            local rand = swep.EFTInspectnum
            if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
            -- if empty and rand == 0 then swep.EFTInspectnum = 1 rand = 1 end
            
            if rand == 2 and !nomag then -- mag
                ending = "_mag_" .. ending
                
                if ARC9EFTBASE and SERVER then
                    net.Start("arc9eftmagcheck")
                    net.WriteBool(false) -- accurate or not based on mag type
                    net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
                    net.WriteUInt(swep:GetCapacity(), 9)
                    net.Send(swep:GetOwner())
                end
            else
                ending = rand
            end
            
            return anim .. ending .. (empty and "_empty" or "")
        elseif anim == "reload" then
            return anim .. (empty and "_empty" or "") .. ending
        end
    
        -- if anim == "fix" then
        --     local rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
            
        --     -- swep.EFTInspectnum = swep.EFTInspectnum or 0
        --     -- if IsFirstTimePredicted() then
        --     --     swep.EFTInspectnum = swep.EFTInspectnum + 1
        --     -- end
        --     -- local rand = swep.EFTInspectnum
        --     -- if rand == 5 then swep.EFTInspectnum = 1 rand = 1 end

        --     if SERVER and ARC9EFTBASE then
        --         net.Start("arc9eftjam")
        --         net.WriteUInt(rand, 3)
        --         net.Send(swep:GetOwner())
        --     end
    
        --     return "jam" .. rand
        -- end
        
        -- print("nomag:", nomag, "rand:", rand, "anim:", anim, "ending:", ending)
        -- print(anim)

        if anim == "dryfire" then
            if swep:GetEFTArmedDryfire() then
                swep:SetEFTArmedDryfire(false)
                return "dryfire"
            end
        elseif anim == "fire" then
            swep:SetEFTArmedDryfire(true) 
        end

        return anim .. (empty and "_empty" or "")
    end
    
    local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
    local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
    local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}
    
    local rst_magcheck = {
        { s = randspin, t = 0.05 },
        { s =  path .. "ppsh_magrelease_button.ogg", t = 0.52 },
        { s =  path .. "ppsh_mag_out.ogg", t = 0.86 },
        { s = randspin, t = 0.92 },
        { s =  path .. "ppsh_mag_pullout3.ogg", t = 0.99 },
        { s =  path .. "ppsh_mag_pullout1.ogg", t = 2.22 },
        { s =  path .. "ppsh_mag_pullout2.ogg", t = 2.41 },
        { s =  path .. "ppsh_mag_in.ogg", t = 2.89 },
        { s = randspin, t = 3.54 },
    }
    local rst_magcheck1 = {
        { s = randspin, t = 0.05 },
        { s =  path .. "ppsh_magrelease_button.ogg", t = 0.5 },
        { s =  path .. "ppsh_mag_box_out.ogg", t = 0.91 },
        { s = randspin, t = 0.93 },
        { s =  path .. "ppsh_mag_pullout1.ogg", t = 1.04 },
        { s =  path .. "ppsh_mag_pullout3.ogg", t = 2.37 },
        { s =  path .. "ppsh_mag_box_in.ogg", t = 2.9 },
        { s = randspin, t = 3.58 },
    }

    SWEP.Animations = {
        ["idle"] = {
            Source = "idle",
            Time = 1000, -- reset when done soundstables!!!!!!!!
        },
        ["idle_empty"] = {
            Source = "idle_empty",
        },
    
        ["ready"] = {
            Source = {"ready0", "ready1", "ready2"},
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
                { s = path .. "ppsh_slider_in.ogg", t = 0.83 },
                { s = path .. "ppsh_slider_out.ogg", t = 1.14, v = 0.25 },
                { s = randspin, t = 1.37 },
            },
        },
    

        ["draw"] = {
            Source = "draw",
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
            }
        },
        ["draw_empty"] = {
            Source = "draw_empty",
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
            }
        },

        ["holster"] = {
            Source = "holster",
            EventTable = {
                { s =  "arc9_eft_shared/weap_out.ogg", t = 0.61 },
            }
        },
    
        ["holster_empty"] = {
            Source = "holster_empty",
            EventTable = {
                { s =  "arc9_eft_shared/weap_out.ogg", t = 0.61 },
            }
        },
    
        ["fire"] = {
            Source = "fire",
            EventTable = { { s = path .. "ak74_trigger_empty.wav", t = 0 } }
        },
        -- ["fire_empty"] = {
        --     Source = "fire_last",
        --     EventTable = { { s = path .. "kedr_trigger_hammer.wav", t = 0 } }
        -- },

        ["dryfire"] = {
            Source = "fire_dry",
            EventTable = {
                { s = path .. "ak74_trigger_empty.wav", t = 0 },
                { s = path .. "ppsh_slider_out.ogg", t = 0.01 },
            },
        },
        ["dryfire_empty"] = {
            Source = "fire_dry_empty",
            EventTable = { { s = path .. "ak74_trigger_empty.wav", t = 0 } }
        },

        ["reload0"] = {
            Source = "reload0",
            MinProgress = 0.92,
            FireASAP = true,
            EventTable = {
                { s = randspin, t = 0.04 },
                { s =  path .. "ppsh_magrelease_button.ogg", t = 0.55 },
                { s = randspin, t = 0.68 },
                { s =  path .. "ppsh_mag_out.ogg", t = 0.87 },
                { s =  path .. "ppsh_mag_pullout3.ogg", t = 1.15 },
                { s = pouchin, t = 1.34 },
                { s = pouchout, t = 1.57 },
                { s =  path .. "ppsh_mag_in.ogg", t = 2.07 },
                { s = randspin, t = 2.4 },
                { s = randspin, t = 2.69 },
            },
        },
        ["reload1"] = {
            Source = "reload1",
            MinProgress = 0.92,
            FireASAP = true,
            EventTable = {
                { s = randspin, t = 0.04 },
                { s =  path .. "ppsh_magrelease_button.ogg", t = 0.47 },
                { s = randspin, t = 0.61 },
                { s =  path .. "ppsh_mag_box_out.ogg", t = 0.86 },
                { s =  path .. "ppsh_mag_pullout3.ogg", t = 1.15 },
                { s = pouchin, t = 1.26 },
                { s = pouchout, t = 1.5 },
                { s =  path .. "ppsh_mag_box_in.ogg", t = 1.86 },
                { s = randspin, t = 2.15 },
                { s = randspin, t = 2.45 },
            },
        },
    
        ["reload_empty0"] = {
            Source = "reload_empty0", 
            MinProgress = 0.92,
            DropMagAt = 1.15,
            FireASAP = true,
            EventTable = {
                { s = randspin, t = 0.04 },
                { s =  path .. "ppsh_magrelease_button.ogg", t = 0.5 },
                { s = randspin, t = 0.57 },
                { s =  path .. "ppsh_mag_out.ogg", t = 0.78 },
                { s =  path .. "ppsh_mag_pullout1.ogg", t = 0.97 },
                { s = randspin, t = 1.09 },
                { s = pouchout, t = 1.34 },
                { s =  path .. "ppsh_mag_in.ogg", t = 1.92 },
                { s = randspin, t = 2.22 },
                { s = randspin, t = 3.02 },
                { s = path .. "ppsh_slider_in.ogg", t = 3.59 },
                { s = path .. "ppsh_slider_out.ogg", t = 3.85, v = 0.25 },
                { s = randspin, t = 4.1 },

                {hide = 0, t = 0},
                {hide = 1, t = 1.15},
                {hide = 0, t = 1.5}
            },
        },
        ["reload_empty1"] = {
            Source = "reload_empty1", 
            MinProgress = 0.92,
            DropMagAt = 1.1,
            FireASAP = true,
            EventTable = {
                { s = randspin, t = 0.04 },
                { s =  path .. "ppsh_magrelease_button.ogg", t = 0.5 },
                { s = randspin, t = 0.57 },
                { s =  path .. "ppsh_mag_box_out.ogg", t = 0.78 },
                { s =  path .. "ppsh_mag_pullout3.ogg", t = 0.97 },
                { s = randspin, t = 1.09 },
                { s = pouchout, t = 1.34 },
                { s =  path .. "ppsh_mag_box_in.ogg", t = 1.73 },
                { s = randspin, t = 2.0 },
                { s = randspin, t = 2.67 },
                { s = path .. "ppsh_slider_in.ogg", t = 3.3 },
                { s = path .. "ppsh_slider_out.ogg", t = 3.58, v = 0.25 },
                { s = randspin, t = 3.84 },

                {hide = 0, t = 0},
                {hide = 1, t = 1.1},
                {hide = 0, t = 1.5}
            },
        },
    
        ["toggle"] = {
            Source = "mod_switch",
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
        ["switchsights"] = {
            Source = "mod_switch",
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
        ["toggle_empty"] = {
            Source = "mod_switch",
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
        ["switchsights_empty"] = {
            Source = "mod_switch",
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
    
    
    
        ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
            Source = "idle",
        },
    
        ["inspect1"] = {
            Source = "look",
            EventTable = {
                { s = randspin, t = 0.22 },
                { s = randspin, t = 1.21 },
                { s = randspin, t = 2.45 },
            },
        },
        ["inspect1_empty"] = {
            Source = "look_empty",
            EventTable = {
                { s = randspin, t = 0.22 },
                { s = randspin, t = 1.21 },
                { s = randspin, t = 2.45 },
            },
        },
    

        ["inspect_mag_0"] = {
            Source = "check_0",
            EventTable = rst_magcheck,
        },
        ["inspect_mag_1"] = {
            Source = "check_1",
            EventTable = rst_magcheck1,
        },
        ["inspect_mag_0_empty"] = {
            Source = "check_0_empty",
            EventTable = rst_magcheck,
        },
        ["inspect_mag_1_empty"] = {
            Source = "check_1_empty",
            EventTable = rst_magcheck1,
        },

        ["inspect0"] = {
            Source = "check_chamber",
            EventTable = {
                { s = randspin, t = 0.19 },
                { s = randspin, t = 1.1 },
            },
        },

        ["inspect0_empty"] = {
            Source = "check_chamber_empty",
            EventTable = {
                { s = randspin, t = 0.19 },
                { s = randspin, t = 1.1 },
            },
        },

        ["firemode_1"] = {
            Source = "firemode0",
            EventTable = {
                { s = path .. "ak74_fireselector_down.ogg", t = 0.42 },
                { s = randspin, t = 0.43 },
            },
        },
        ["firemode_2"] = {
            Source = "firemode1",
            EventTable = {
                { s = randspin, t = 0.25 },
                { s = path .. "ak74_fireselector_up.ogg", t = 0.32 },
            },
        },
    
        ["firemode_1_empty"] = {
            Source = "firemode0",
            EventTable = {
                { s = path .. "ak74_fireselector_down.ogg", t = 0.42 },
                { s = randspin, t = 0.43 },
            },
        },
        ["firemode_2_empty"] = {
            Source = "firemode1",
            EventTable = {
                { s = randspin, t = 0.25 },
                { s = path .. "ak74_fireselector_up.ogg", t = 0.32 },
            },
        },
    

    }

------------------------- [[[           Attachments            ]]] -------------------------

SWEP.AttachmentElements = {
    ["eft_ppsh41_barrel_269"] = { Bodygroups = { {1, 1} } },
    ["eft_ppsh41_dust"] = { Bodygroups = { {2, 1} } },
    ["eft_ppsh41_stock"] = { Bodygroups = { {3, 1} } },
    ["eft_ppsh41_mag_35"] = { Bodygroups = { {4, 1} } },
    ["eft_ppsh41_mag_71"] = { Bodygroups = { {4, 2} } },
}

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasAmmoooooooo") or 
        !self:GetValue("HasReciever") or
        !self:GetValue("HasBarrel") or
        !self:GetValue("HasGrip") then
        if SERVER and self.missingpartsnotifsent < CurTime() then
            self.missingpartsnotifsent = CurTime() + 3
            net.Start("arc9eftmissingparts")
            net.Send(self:GetOwner())
        end
        return true 
    end
end

function SWEP:Hook_RedPrintName()
    if  !self:GetValue("HasAmmoooooooo") or 
        !self:GetValue("HasReciever") or
        !self:GetValue("HasBarrel") or
        !self:GetValue("HasGrip") then
            return true 
    end
end

SWEP.Attachments = {
    {
        PrintName = "Barrel",
        Category = "eft_ppsh41_barrel",
        Installed = "eft_ppsh41_barrel_269",
        Bone = "mod_stock",
        Pos = Vector(0, 12, 1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Stock",
        Category = "eft_stock_ppsh41",
        Installed = "eft_ppsh41_stock",
        Bone = "mod_stock",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Dust cover",
        Category = "eft_ppsh41_dc",
        Installed = "eft_ppsh41_dust",
        Bone = "mod_stock",
        Pos = Vector(0, 9, 1.5),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_762x25tt",
        Bone = "mod_magazine",
        Integral = "eft_ammo_762x25tt_pst",
        Installed = "eft_ammo_762x25tt_pst",
        Pos = Vector(0, -0, -4),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Magazine",
        Category = "eft_ppsh41_mag",
        Bone = "mod_magazine",
        Installed = "eft_ppsh41_mag_35",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_ppsh41"},
        Bone = "mod_stock",
        Pos = Vector(0, 0, -3),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

SWEP.EFTErgo = 16
if ARC9EFTBASE then
    SWEP.AimDownSightsTimeHook = ARC9EFT.ErgoHook or nil
    SWEP.HoldBreathTimeHook = ARC9EFT.ErgoBreathHook or nil
    -- SWEP.HookP_TranslateSound = ARC9EFT.ErgoAdsVolume or nil
    SWEP.SpreadHook = ARC9EFT.SpreadBonus or nil
else
    print("Dum! install arc9 eft shared!!!!!!!!!!!!!!")
end
SWEP.AimDownSightsTimeMultShooting = 4

SWEP.RicochetSounds = ARC9EFT.RicochetSounds
SWEP.ShellSounds = ARC9EFT.Shells9mm




-- ewww

function SWEP:DoHeat()
    self:SetHeatAmount(self:GetHeatAmount() + self:GetProcessedValue("HeatPerShot", true))
    -- removed thing that would "jam" the weapon when overheating
    -- cuz no anims
end

DEFINE_BASECLASS(SWEP.Base)
function SWEP:SetupDataTables(...)
    BaseClass.SetupDataTables(self, ...)
    self:NetworkVar("Bool", 27, "EFTArmedDryfire")
    self:SetEFTArmedDryfire(true)
end