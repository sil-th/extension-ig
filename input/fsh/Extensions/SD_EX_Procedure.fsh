
Extension: EX_TH_ProcedureLaborLocation
Id: ex-procedure-labor-location
Title: "Procedure: Labor Location"
Description: "รหัสสถานที่คลอด"
* ^url = $EX_TH_ProcedureLaborLocation
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Procedure.location"
* . ^short = "รหัสสถานที่คลอด"
* . ^definition = "รหัสสถานที่คลอด"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_LaborLocation (extensible)



Extension: EX_TH_ProcedureProcedureType
Id: ex-procedure-procedure-type
Title: "Procedure: Procedure Type"
Description: "รหัสชนิดของหัตถการ"
* ^url = $EX_TH_ProcedureProcedureType
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Procedure"
* . ^short = "รหัสชนิดของหัตถการ"
* . ^definition = "รหัสชนิดของหัตถการ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_ProcedureType (extensible)


