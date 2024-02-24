local ATT = {}


///////////////////////////////////////      eft_ppsh41_barrel_269

ATT = {}

ATT.PrintName = "PPSh-41 7.62x25 10.6 inch barrel"
ATT.CompactName = "PPSh41 10.6\""
ATT.Icon = Material("entities/eft_ppsh41_attachments/b.png", "mips smooth")
ATT.Description = [[A 10.6 inch (269mm) long barrel for the PPSh-41, chambered in 7.62x25.]]

ATT.HasBarrel = true 

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.SpreadOverride = 7.22 * ARC9.MOAToAcc

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_ppsh41_barrel"}

ARC9.LoadAttachment(ATT, "eft_ppsh41_barrel_269")

///////////////////////////////////////      eft_ppsh41_dust

ATT = {}

ATT.PrintName = "PPSh-41 dust cover"
ATT.CompactName = "PPSh41"
ATT.Icon = Material("entities/eft_ppsh41_attachments/dc.png", "mips smooth")
ATT.Description = [[A standard-issue dust cover for PPSh-41.]]

ATT.HasReciever = true 

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_ppsh41_dc"}

ARC9.LoadAttachment(ATT, "eft_ppsh41_dust")

///////////////////////////////////////      eft_ppsh41_stock

ATT = {}

ATT.PrintName = "PPSh-41 stock"
ATT.CompactName = "PPSh41"
ATT.Icon = Material("entities/eft_ppsh41_attachments/s.png", "mips smooth")
ATT.Description = [[A standard-issue wooden stock for the PPSh-41 submachine gun.]]

ATT.HasGrip = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 28
ATT.CustomPros = { Ergonomics = "+28" }
ATT.RecoilMult = 0.8
ATT.VisualRecoilMult = 0.8

ATT.Category = {"eft_stock_ppsh41"}

ARC9.LoadAttachment(ATT, "eft_ppsh41_stock")

///////////////////////////////////////      eft_ppsh41_mag_35

ATT = {}

ATT.PrintName = "PPSh-41 7.62x25 35-round magazine"
ATT.CompactName = "PPSh 35"
ATT.Icon = Material("entities/eft_ppsh41_attachments/35.png", "mips smooth")
ATT.Description = [[A 35-round 7.62x25 steel magazine for the PPSh-41.]]

ATT.EFTErgoAdd = -3
ATT.CustomPros = { Ergonomics = "-3" }
ATT.MalfunctionMeanShotsToFailMult = 0.955

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_ppsh_35.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_ppsh41_mag"}

ATT.HasMag = true

ATT.ClipSize = 35
-- ATT.ChamberSize = 1

ARC9.LoadAttachment(ATT, "eft_ppsh41_mag_35")

///////////////////////////////////////      eft_ppsh41_mag_71

ATT = {}

ATT.PrintName = "PPSh-41 7.62x25 71-round drum magazine"
ATT.CompactName = "PPSh 71"
ATT.Icon = Material("entities/eft_ppsh41_attachments/71.png", "mips smooth")
ATT.Description = [[A 71-round 7.62x25 steel drum magazine for the PPSh-41.]]

ATT.EFTErgoAdd = -9
ATT.CustomPros = { Ergonomics = "-9" }
ATT.MalfunctionMeanShotsToFailMult = 0.795

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_ppsh_71.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_ppsh41_mag"}

ATT.HasMag = true

ATT.ClipSize = 71
-- ATT.ChamberSize = 1

ARC9.LoadAttachment(ATT, "eft_ppsh41_mag_71")