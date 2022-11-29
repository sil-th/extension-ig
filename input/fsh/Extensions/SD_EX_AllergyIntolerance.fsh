Extension: EX_TH_AllergyIntoleranceCertainty
Id: ex-allergyintolerance-allergy-certainty
Title: "AllergyIntolerance: Certainty"
Description: "รหัสประเภทการวินิจฉัยการแพ้ยา"
* ^url = $EX_TH_AllergyIntoleranceCertainty
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . 0..*
* . ^short = "รหัสประเภทการวินิจฉัยการแพ้ยา"
* . ^definition = "รหัสประเภทการวินิจฉัยการแพ้ยา"
* url = $EX_TH_AllergyIntoleranceCertainty (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_AllergyCertainty (extensible)




Extension: EX_TH_AllergyIntoleranceSeverity
Id: ex-allergyintolerance-allergy-severity
Title: "AllergyIntolerance: Severity"
Description: "รหัสระดับความรุนแรงของการแพ้ยา"
* ^url = $EX_TH_AllergyIntoleranceSeverity
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . 0..*
* . ^short = "รหัสระดับความรุนแรงของการแพ้ยา"
* . ^definition = "รหัสระดับความรุนแรงของการแพ้ยา"
* url = $EX_TH_AllergyIntoleranceSeverity (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_AllergySeverity (extensible)





Extension: EX_TH_AllergyIntoleranceAssertType
Id: ex-allergyintolerance-allergy-assert-type
Title: "AllergyIntolerance: Asserter Type"
Description: "รหัสผู้ให้ประวัติการแพ้ยา"
* ^url = $EX_TH_AllergyIntoleranceAssertType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . 0..*
* . ^short = "รหัสผู้ให้ประวัติการแพ้ยา"
* . ^definition = "รหัสผู้ให้ประวัติการแพ้ยา"
* url = $EX_TH_AllergyIntoleranceAssertType (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_AllergyAssertType (extensible)






Extension: EX_TH_AllergyIntoleranceAssertOrg
Id: ex-allergyintolerance-allergy-assert-org
Title: "AllergyIntolerance: Asserter Organization"
Description: "รหัสสถานพยาบาลผู้ให้ประวัติการแพ้ยา"
* ^url = $EX_TH_AllergyIntoleranceAssertOrg
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . 0..*
* . ^short = "รหัสสถานพยาบาลผู้ให้ประวัติการแพ้ยา"
* . ^definition = "รหัสสถานพยาบาลผู้ให้ประวัติการแพ้ยา"
* url = $EX_TH_AllergyIntoleranceAssertOrg (exactly)
* value[x] 1..
* value[x] only Reference(Organization)