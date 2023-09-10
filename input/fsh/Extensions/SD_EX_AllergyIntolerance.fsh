Extension: EX_TH_AllergyIntoleranceCertainty
Id: ex-allergyintolerance-allergy-certainty
Title: "AllergyIntolerance: Certainty"
Description: "รหัสประเภทการวินิจฉัยการแพ้ยา"
* ^url = $EX_TH_AllergyIntoleranceCertainty
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . ^short = "รหัสประเภทการวินิจฉัยการแพ้ยา"
* . ^definition = "รหัสประเภทการวินิจฉัยการแพ้ยา"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_AllergyCertainty (extensible)




Extension: EX_TH_AllergyIntoleranceSeverity
Id: ex-allergyintolerance-allergy-severity
Title: "AllergyIntolerance: Severity"
Description: "รหัสระดับความรุนแรงของการแพ้ยา"
* ^url = $EX_TH_AllergyIntoleranceSeverity
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . ^short = "รหัสระดับความรุนแรงของการแพ้ยา"
* . ^definition = "รหัสระดับความรุนแรงของการแพ้ยา"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_AllergySeverity (extensible)





Extension: EX_TH_AllergyIntoleranceAssertType
Id: ex-allergyintolerance-allergy-assert-type
Title: "AllergyIntolerance: Asserter Type"
Description: "รหัสผู้ให้ประวัติการแพ้ยา"
* ^url = $EX_TH_AllergyIntoleranceAssertType
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . ^short = "รหัสผู้ให้ประวัติการแพ้ยา"
* . ^definition = "รหัสผู้ให้ประวัติการแพ้ยา"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_AllergyAssertType (extensible)






Extension: EX_TH_AllergyIntoleranceAssertOrg
Id: ex-allergyintolerance-allergy-assert-org
Title: "AllergyIntolerance: Asserter Organization"
Description: "รหัสสถานพยาบาลผู้ให้ประวัติการแพ้ยา"
* ^url = $EX_TH_AllergyIntoleranceAssertOrg
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . ^short = "รหัสสถานพยาบาลผู้ให้ประวัติการแพ้ยา"
* . ^definition = "รหัสสถานพยาบาลผู้ให้ประวัติการแพ้ยา"
* value[x] 1..
* value[x] only Reference(Organization)