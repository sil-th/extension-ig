Extension: EX_TH_AccountCoverageUse
Id: ex-account-coverage-use
Title: "Account: Coverage Use"
Description: "รหัสการใช้สิทธิ"
* ^url = $EX_TH_AccountCoverageUse
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Account"
* . ^short = "รหัสการใช้สิทธิ"
* . ^definition = "รหัสการใช้สิทธิ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_43Plus_CoverageUse (extensible)


Extension: EX_TH_AccountAccidentCoverage
Id: ex-account-accident-coverage
Title: "Account: Accident Coverage"
Description: "รหัสสิทธิการรักษาอื่นกรณีอุบัติเหตุ"
* ^url = $EX_TH_AccountAccidentCoverage
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[=].expression = "Account"
* ^context[+].type = #element
* ^context[=].expression = "Encounter"
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest"
* . ^short = "รหัสสิทธิการรักษาอื่นกรณีอุบัติเหตุ"
* . ^definition = "รหัสสิทธิการรักษาอื่นกรณีอุบัติเหตุ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_AccidentCoverage (extensible)


