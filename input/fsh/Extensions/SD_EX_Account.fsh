Extension: EX_TH_AccountCoverageUse
Id: ex-account-coverage-use
Title: "Account: Coverage Use"
Description: "รหัสการใช้สิทธิ"
* ^url = $EX_TH_AccountCoverageUse
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Account"
* . 0..*
* . ^short = "รหัสการใช้สิทธิ"
* . ^definition = "รหัสการใช้สิทธิ"
* url = $EX_TH_AccountCoverageUse (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_43Plus_CoverageUse (extensible)


Extension: EX_TH_AccountAccidentCoverage
Id: ex-account-accident-coverage
Title: "Account: Accident Coverage"
Description: "รหัสสิทธิการรักษาอื่นกรณีอุบัติเหตุ"
* ^url = $EX_TH_AccountAccidentCoverage
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Account"
* . 0..*
* . ^short = "รหัสสิทธิการรักษาอื่นกรณีอุบัติเหตุ"
* . ^definition = "รหัสสิทธิการรักษาอื่นกรณีอุบัติเหตุ"
* url = $EX_TH_AccountAccidentCoverage (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_AccidentCoverage (extensible)


