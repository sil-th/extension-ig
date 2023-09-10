// Alias: $EX_TH_MedicationImageUrl = https://fhir-ig.sil-th.org/mophpc/Extension/TH-med-image
// * extension[0]
//   * valueUri = "http://example.com/image1.jpg"
Extension: EX_TH_MedicationImageUrl
Id: ex-medication-image-url
Title: "Medication: Image URL"
Description: "URL ของรูปถ่ายยา"
* ^url = $EX_TH_MedicationImageUrl
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Medication"
* . ^short = "URL ของรูปถ่ายยา"
* . ^definition = "URL ของรูปถ่ายยา"
* value[x] 1..
* value[x] only uri