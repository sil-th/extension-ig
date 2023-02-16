// Alias: $EX_TH_MedicationDispenseDeliveryMode = https://fhir-ig.sil-th.org/mophpc/Extension/TH-med-delivery
// * extension[0]
//   * url = $EX_TH_MedicationDispenseDeliveryMode
//   * valueCodeableConcept = $CS_43Plus_MedDelivery#1 "รับที่ counter ยา"
Extension: EX_TH_MedicationDispenseDeliveryMode
Id: ex-medicationdispense-med-delivery-mode
Title: "MedicationDispense: Delivery Mode"
Description: "การส่งมอบยา (กรณีจ่ายไปใช้ที่บ้าน)"
* ^url = $EX_TH_MedicationDispenseDeliveryMode
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "MedicationDispense"
* . 0..*
* . ^short = "การส่งมอบยา (กรณีจ่ายไปใช้ที่บ้าน)"
* . ^definition = "การส่งมอบยา (กรณีจ่ายไปใช้ที่บ้าน)"
* url = $EX_TH_MedicationDispenseDeliveryMode (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_43Plus_MedDelivery (extensible)



Extension: EX_CHI_ProductCat
Id: ex-claim-chi-product-cat
Title: "Claim: CHI - Product Category"
Description: "ประเภทยาและเวชภัณฑ์ (ที่มา: สกส. CSOP BillDisp)"
* ^url = $EX_CHI_ProductCat
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "MedicationDispense"
* . 0..*
* . ^short = "ประเภทยาและเวชภัณฑ์ (ที่มา: สกส. CSOP BillDisp)"
* . ^definition = "ประเภทยาและเวชภัณฑ์"
* url = $EX_CHI_ProductCat (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_CHI_ProductCat (extensible)


Extension: EX_CHI_PackSize
Id: ex-claim-chi-packsize
Title: "Claim: CHI - Pack Size"
Description: "ขนาดบรรจุ (ที่มา: สกส. CSOP BillDisp)"
* ^url = $EX_CHI_PackSize
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "MedicationDispense"
* . 0..*
* . ^short = "ขนาดบรรจุ (ที่มา: สกส. CSOP BillDisp)"
* . ^definition = "ขนาดบรรจุ"
* url = $EX_CHI_PackSize (exactly)
* value[x] 1..
* value[x] only string
