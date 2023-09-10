Extension: EX_TH_ConditionChronicDischargeReason
Id: ex-condition-chronic-discharge-reason
Title: "Condition: Chronic Case Discharge Reason"
Description: "ประเภทการจำหน่าย chronic case หรือสถานะของผู้ป่วยที่ทราบผลหลังสุด"
* ^url = $EX_TH_ConditionChronicDischargeReason
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[=].expression = "Condition"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* . ^short = "ประเภทการจำหน่าย chronic case หรือสถานะของผู้ป่วยที่ทราบผลหลังสุด"
* . ^definition = "ประเภทการจำหน่าย chronic case หรือสถานะของผู้ป่วยที่ทราบผลหลังสุด"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_ChronicDischargeReason (extensible)







