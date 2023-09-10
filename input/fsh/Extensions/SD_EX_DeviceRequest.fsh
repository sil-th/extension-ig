// Alias: $EX_TH_DeviceRequestUseLocation = https://fhir-ig.sil-th.org/mophpc/Extension/TH-product-use-location
// * extension
//   * url = $EX_TH_DeviceRequestUseLocation
//   * valueCodeableConcept = $CS_eClaim_MedicationCategory#2 "ใช้ที่บ้าน"
Extension: EX_TH_DeviceRequestUseLocation
Id: ex-devicerequest-use-location
Title: "DeviceRequest: Product Use Location"
Description: "รหัสหมวดสถานที่ใช้ยา/เวชภัณฑ์"
* ^url = $EX_TH_DeviceRequestUseLocation
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "DeviceRequest"
* . ^short = "รหัสหมวดสถานที่ใช้ยา/เวชภัณฑ์"
* . ^definition = "รหัสหมวดสถานที่ใช้ยา/เวชภัณฑ์"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_MedicationCategory (extensible)
