// Alias: $EX_TH_MedicationDispenseDeliveryMode = https://fhir-ig.sil-th.org/mophpc/Extension/TH-med-delivery
// * extension[0]
//   * valueCodeableConcept = $CS_43Plus_MedDelivery#1 "รับที่ counter ยา"
Extension: EX_TH_MedicationDispenseDeliveryMode
Id: ex-medicationdispense-med-delivery-mode
Title: "MedicationDispense: Delivery Mode"
Description: "การส่งมอบยา (กรณีจ่ายไปใช้ที่บ้าน)"
* ^url = $EX_TH_MedicationDispenseDeliveryMode
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "MedicationDispense"
* . ^short = "การส่งมอบยา (กรณีจ่ายไปใช้ที่บ้าน)"
* . ^definition = "การส่งมอบยา (กรณีจ่ายไปใช้ที่บ้าน)"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_43Plus_MedDelivery (extensible)



Extension: EX_CHI_ProductCat
Id: ex-claim-chi-product-cat
Title: "Claim: CHI - Product Category"
Description: "ประเภทยาและเวชภัณฑ์ (ที่มา: สกส. CSOP BillDisp)"
* ^url = $EX_CHI_ProductCat
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "MedicationDispense"
* . ^short = "ประเภทยาและเวชภัณฑ์ (ที่มา: สกส. CSOP BillDisp)"
* . ^definition = "ประเภทยาและเวชภัณฑ์"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_CHI_ProductCat (extensible)


Extension: EX_CHI_PackSize
Id: ex-claim-chi-packsize
Title: "Claim: CHI - Pack Size"
Description: "ขนาดบรรจุ (ที่มา: สกส. CSOP BillDisp)"
* ^url = $EX_CHI_PackSize
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "MedicationDispense"
* . ^short = "ขนาดบรรจุ (ที่มา: สกส. CSOP BillDisp)"
* . ^definition = "ขนาดบรรจุ"
* value[x] 1..
* value[x] only string
