Extension: EX_TH_MedicationRequestSource
Id: ex-medicationrequest-medication-source
Title: "MedicationRequest: Medication Source"
Description: "ที่มาของยา"
* ^url = $EX_TH_MedicationRequestSource
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[=].expression = "MedicationRequest"
* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement"
* . ^short = "ที่มาของยา"
* . ^definition = "ที่มาของยา"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_Std15_MedicationSource (extensible)



Extension: EX_TH_MedicationRequestNedCriteria
Id: ex-medicationrequest-ned-criteria
Title: "MedicationModule: Non-essential Drug Prescription Criteria"
Description: "เหตุผลประกอบการสั่งใช้ยานอกบัญชียาหลักแห่งชาติ (Non-essential Drug Prescription Criteria)"
* ^url = $EX_TH_MedicationRequestNedCriteria
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[=].expression = "MedicationRequest"
* ^context[+].type = #element
* ^context[=].expression = "MedicationDispense"
* . ^short = "เหตุผลประกอบการสั่งใช้ยานอกบัญชียาหลักแห่งชาติ (Non-essential drug Prescription Criteria)"
* . ^definition = "เหตุผลประกอบการสั่งใช้ยานอกบัญชียาหลักแห่งชาติ (Non-essential drug Prescription Criteria)"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_MedNedCriteria (extensible)





Extension: EX_TH_MedicationRequestApprovedNo
Id: ex-medicationrequest-med-approved-no
Title: "MedicationRequest: Med Approve Number"
Description: "เลขที่ได้รับการอนุมัติ จากระบบขออนุมัติใช้ยาควบคุมเฉพาะ"
* ^url = $EX_TH_MedicationRequestApprovedNo
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[=].expression = "MedicationRequest"
* ^context[+].type = #element
* ^context[=].expression = "MedicationDispense"
* . ^short = "เลขที่ได้รับการอนุมัติ จากระบบขออนุมัติใช้ยาควบคุมเฉพาะ"
* . ^definition = "เลขที่ได้รับการอนุมัติ จากระบบขออนุมัติใช้ยาควบคุมเฉพาะ"
* value[x] 1..
* value[x] only string





