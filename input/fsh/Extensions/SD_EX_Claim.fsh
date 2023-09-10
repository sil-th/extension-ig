Extension: EX_TH_ClaimItemCost
Id: ex-claim-item-cost
Title: "Claim: Item Cost"
Description: "ราคาทุนของรายการนั้น"
* ^url = $EX_TH_ClaimItemCost
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[=].expression = "Claim.item"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail.subDetail"
* . ^short = "ราคาทุนของรายการนั้น"
* . ^definition = "ราคาทุนของรายการนั้น"
* value[x] 1..
* value[x] only Money
* valueMoney.currency = #THB (exactly)



Extension: EX_TH_ClaimItemCopay
Id: ex-claim-item-copay
Title: "Claim: Item Co-pay"
Description: "ค่าบริการที่ต้องจ่าย ของรายการนั้น"
* ^url = $EX_TH_ClaimItemCopay
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[=].expression = "Claim.item"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail.subDetail"
* . ^short = "ค่าบริการที่ต้องจ่าย ของรายการนั้น"
* . ^definition = "ค่าบริการที่ต้องจ่าย ของรายการนั้น"
* value[x] 1..
* value[x] only Money
* valueMoney.currency = #THB (exactly)




Extension: EX_TH_ClaimItemPaid
Id: ex-claim-item-paid
Title: "Claim: Item Paid"
Description: "ค่าบริการที่ได้จ่ายไปแล้ว ของรายการนั้น"
* ^url = $EX_TH_ClaimItemPaid
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[=].expression = "Claim.item"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail.subDetail"
* . ^short = "ค่าบริการที่ได้จ่ายไปแล้ว ของรายการนั้น"
* . ^definition = "ค่าบริการที่ได้จ่ายไปแล้ว ของรายการนั้น"
* value[x] 1..
* value[x] only Money
* valueMoney.currency = #THB (exactly)



// Alias: $EX_TH_ClaimItemUnpaid = https://fhir-ig.sil-th.org/mophpc/Extension/TH-claim-item-unpaid
Extension: EX_TH_ClaimItemUnpaid
Id: ex-claim-item-unpaid
Title: "Claim: Item Unpaid"
Description: "ค่าบริการที่ยังไม่ได้จ่าย ของรายการนั้น"
* ^url = $EX_TH_ClaimItemUnpaid
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[=].expression = "Claim.item"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail.subDetail"
* . ^short = "ค่าบริการที่ยังไม่ได้จ่าย ของรายการนั้น"
* . ^definition = "ค่าบริการที่ยังไม่ได้จ่าย ของรายการนั้น"
* value[x] 1..
* value[x] only Money
* valueMoney.currency = #THB (exactly)




// Alias: $EX_TH_ClaimTotalCost = https://fhir-ig.sil-th.org/mophpc/Extension/TH-claim-total-cost
// * extension[0]
//   * valueMoney
//     * value = 10000.0
//     * currency = $ISO4217#THB
Extension: EX_TH_ClaimTotalCost
Id: ex-claim-total-cost
Title: "Claim: Total Cost"
Description: "ราคาทุน ทั้งหมด"
* ^url = $EX_TH_ClaimTotalCost
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Claim"
* . ^short = "ราคาทุน ทั้งหมด"
* . ^definition = "ราคาทุน ทั้งหมด"
* value[x] 1..
* value[x] only Money
* valueMoney.currency = #THB (exactly)






// Alias: $EX_TH_ClaimTotalCopay = https://fhir-ig.sil-th.org/mophpc/Extension/TH-claim-total-self-pay
// * extension[+]
//   * valueMoney
//     * value = 10000.0
//     * currency = $ISO4217#THB
Extension: EX_TH_ClaimTotalCopay
Id: ex-claim-total-copay
Title: "Claim: Total Co-pay"
Description: "ราคาร่วมจ่าย ทั้งหมด"
* ^url = $EX_TH_ClaimTotalCopay
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Claim"
* . ^short = "ราคาร่วมจ่าย ทั้งหมด"
* . ^definition = "ราคาร่วมจ่าย ทั้งหมด"
* value[x] 1..
* value[x] only Money
* valueMoney.currency = #THB (exactly)






// Alias: $EX_TH_ClaimTotalPaid = https://fhir-ig.sil-th.org/mophpc/Extension/TH-claim-total-actual-self-pay
// * extension[+]
//   * valueMoney
//     * value = 10000.0
//     * currency = $ISO4217#THB
Extension: EX_TH_ClaimTotalPaid
Id: ex-claim-total-paid
Title: "Claim: Total Paid"
Description: "จำนวนเงินที่ได้จ่ายไปแล้ว"
* ^url = $EX_TH_ClaimTotalPaid
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Claim"
* . ^short = "จำนวนเงินที่ได้จ่ายไปแล้ว"
* . ^definition = "จำนวนเงินที่ได้จ่ายไปแล้ว"
* value[x] 1..
* value[x] only Money
* valueMoney.currency = #THB (exactly)






// Alias: $EX_TH_ClaimTotalUnpaid = https://fhir-ig.sil-th.org/mophpc/Extension/TH-claim-total-unpaid
// * extension[+]
//   * valueMoney
//     * value = 10000.0
//     * currency = $ISO4217#THB
Extension: EX_TH_ClaimTotalUnpaid
Id: ex-claim-total-unpaid
Title: "Claim: Total Unpaid"
Description: "จำนวนเงินที่ยังไม่จ่าย"
* ^url = $EX_TH_ClaimTotalUnpaid
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Claim"
* . ^short = "จำนวนเงินที่ยังไม่จ่าย"
* . ^definition = "จำนวนเงินที่ยังไม่จ่าย"
* value[x] 1..
* value[x] only Money
* valueMoney.currency = #THB (exactly)






// Alias: $EX_TH_ClaimFeeNote = https://fhir-ig.sil-th.org/mophpc/Extension/TH-claim-fee-note
// * extension[+]
//   * valueAnnotation
//     * text = "รายละเอียดค่าบริการและการรักษาเพิ่มเติม (ถ้ามี)"
Extension: EX_TH_ClaimFeeNote
Id: ex-claim-fee-note
Title: "Claim: Fee Note"
Description: "รายละเอียดค่าบริการและการรักษาเพิ่มเติม (ถ้ามี)"
* ^url = $EX_TH_ClaimFeeNote
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Claim"
* . ^short = "รายละเอียดค่าบริการและการรักษาเพิ่มเติม (ถ้ามี)"
* . ^definition = "รายละเอียดค่าบริการและการรักษาเพิ่มเติม (ถ้ามี)"
* value[x] 1..
* value[x] only Annotation







// Alias: $EX_TH_ClaimIpdDRG = https://fhir-ig.sil-th.org/mophpc/Extension/TH-ipd-drg
// * extension[+]
//   * extension[0]
//     * url = "drg" (exactly)
//     * valueString = "XXXXX"
//   * extension[+]
//     * url = "rw" (exactly)
//     * valueString = "1788.0000"
//   * extension[+]
//     * url = "adjrw" (exactly)
//     * valueString = "XXXX"
//   * extension[+]
//     * url = "error" (exactly)
//     * valueString = "รหัสความผิดพลาด"
//   * extension[+]
//     * url = "warning" (exactly)
//     * valueString = "รหัสคำเตือน"
//   * extension[+]
//     * url = "version" (exactly)
//     * valueString = "XXXX"
Extension: EX_TH_ClaimIpdDRG
Id: ex-claim-ipd-drg
Title: "Claim: IPD DRG"
Description: "ข้อมูลเกี่ยวกับ DRG"
* ^url = $EX_TH_ClaimIpdDRG
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Claim"
* . ^short = "ข้อมูลเกี่ยวกับ DRG"
* . ^definition = "ข้อมูลเกี่ยวกับ DRG"
* extension contains
    drg 0..1 and
    rw 0..1 and
    adjrw 0..1 and
    error 0..1 and
    warning 0..1 and
    los 0..1 and
    version 0..1
* extension[drg] only Extension
* extension[drg] ^short = "กลุ่ม DRG"
* extension[drg] ^definition = "กลุ่ม DRG"
  * url = "drg" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[rw] only Extension
* extension[rw] ^short = "ค่าน้ำหนักสัมพัทธ์"
* extension[rw] ^definition = "ค่าน้ำหนักสัมพัทธ์ของผู้ป่วยใน ที่ได้จากการคำนวณโดยโปรแกรม Grouper Version ที่ประกาศใช้ในราชกิจจานุเบกษา เป็นตัวเลขทศนิยม 4 หลัก  ระบุเป็นตัวเลขไม่เกิน 6 หลัก และทศนิยม 4 ตำแหน่ง เช่น  1788.0000  ถ้าไม่มีให้ใส่ 0.0000"
  * url = "rw" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[adjrw] only Extension
* extension[adjrw] ^short = "ค่าน้ำหนักสัมพัทธ์ที่ปรับค่าแล้ว"
* extension[adjrw] ^definition = "ค่าน้ำหนักสัมพัทธ์ที่ปรับค่าแล้วของผู้ป่วยใน ที่ได้จากการคำนวณโดยโปรแกรม Grouper Version ที่ประกาศใช้ในราชกิจจานุเบกษา"
  * url = "adjrw" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[error] only Extension
* extension[error] ^short = "รหัสความผิดพลาดเกี่ยวกับข้อมูลผู้ป่วยใน"
* extension[error] ^definition = "รหัสความผิดพลาดเกี่ยวกับข้อมูลผู้ป่วยใน ที่ได้จากการคำนวณโดยโปรแกรม Grouper Version ที่ประกาศใช้ในราชกิจจานุเบกษา"
  * url = "error" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[warning] only Extension
* extension[warning] ^short = "รหัสคำเตือนเกี่ยวกับข้อมูลผู้ป่วยใน"
* extension[warning] ^definition = "รหัสคำเตือนเกี่ยวกับข้อมูลผู้ป่วยใน ที่ได้จากการคำนวณโดยโปรแกรม Grouper Version ที่ประกาศใช้ในราชกิจจานุเบกษา"
  * url = "warning" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[los] only Extension
* extension[los] ^short = "วันนอนจริง"
* extension[los] ^definition = "ค่าวันนอนจริงของผู้ป่วยใน ที่ได้จากการคำนวณโดยโปรแกรม Grouper Version ที่ประกาศใช้ในราชกิจจานุเบกษา"
  * url = "los" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[version] only Extension
* extension[version] ^short = "รุ่นของโปรแกรม Grouper ที่ใช้ในการคำนวณ"
* extension[version] ^definition = "เลข Version ของโปรแกรม Grouper ใช้ในการคำนวณข้อมูลผู้ป่วยในตามที่ประกาศใช้ในราชกิจจานุเบกษา"
  * url = "version" (exactly)
  * value[x] 1..
  * value[x] only string


Extension: EX_TH_ClaimAccidentDateTime
Id: ex-claim-accident-datetime
Title: "Claim: Accident Datetime"
Description: "วันเวลาที่เกิดอุบัติเหตุ"
* ^url = $EX_TH_ClaimAccidentDateTime
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[=].expression = "Claim.accident.date"
* . ^short = "วันเวลาที่เกิดอุบัติเหตุ"
* . ^definition = "วันเวลาที่เกิดอุบัติเหตุ"
* value[x] 1..
* value[x] only dateTime


Extension: EX_TH_ClaimItemDetailDateTime
Id: ex-claim-item-detail-datetime
Title: "Claim: Item Detail Datetime"
Description: "วันเวลาที่ให้บริการรายการดังกล่าว"
* ^url = $EX_TH_ClaimItemDetailDateTime
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[=].expression = "Claim.item.detail"
* . ^short = "วันเวลาที่ให้บริการรายการดังกล่าว"
* . ^definition = "วันเวลาที่ให้บริการรายการดังกล่าว"
* value[x] 1..
* value[x] only dateTime


Extension: EX_TH_ClaimInsuranceAEType
Id: ex-claim-insurance-aetype
Title: "Claim: Insurance AE Type"
Description: "รหัสสิทธิการรักษาอื่นกรณีอุบัติเหตุ (สปสช. e-claim 16 แฟ้ม)"
* ^url = $EX_TH_ClaimInsuranceAEType
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[=].expression = "Claim.insurance"
* . ^short = "รหัสสิทธิการรักษาอื่นกรณีอุบัติเหตุ (สปสช. e-claim 16 แฟ้ม)"
* . ^definition = "รหัสสิทธิการรักษาอื่นกรณีอุบัติเหตุ (สปสช. e-claim 16 แฟ้ม)"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_AccidentCoverage (extensible)




Extension: EX_CHI_AuthStation
Id: ex-claim-auth-station
Title: "Claim: CHI - Author Station"
Description: "จุดเก็บค่ารักษา (สถานี) ที่บันทึกธุรกรรมนี้ (ที่มา: สกส. CSOP Billtran)"
* ^url = $EX_CHI_AuthStation
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim"
* . ^short = "จุดเก็บค่ารักษา (สถานี) ที่บันทึกธุรกรรมนี้ (ที่มา: สกส. CSOP Billtran)"
* . ^definition = "จุดเก็บค่ารักษา (สถานี) ที่บันทึกธุรกรรมนี้"
* value[x] 1..
* value[x] only Reference(Location)


Extension: EX_CHI_BillNo
Id: ex-claim-bill-no
Title: "Claim: CHI - Bill No."
Description: "เลขที่ใบเสร็จที่ออกให้แก่ผู้รับบริการ (ที่มา: สกส. CSOP Billtran)"
* ^url = $EX_CHI_BillNo
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim"
* . ^short = "เลขที่ใบเสร็จที่ออกให้แก่ผู้รับบริการ (ที่มา: สกส. CSOP Billtran)"
* . ^definition = "เลขที่ใบเสร็จที่ออกให้แก่ผู้รับบริการ, เช่นกรณีมีค่าใช้จ่ายส่วนที่เบิกไม่ได้"
* value[x] 1..
* valueString 1..


Extension: EX_CHI_TotalCharge
Id: ex-claim-total-charge
Title: "Claim: CHI - Total Charge"
Description: "ยอดเงินรวมการเรียกเก็บค่ารักษา (ที่มา: สกส. CSOP Billtran)"
* ^url = $EX_CHI_TotalCharge
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim"
* . ^short = "ยอดเงินรวมการเรียกเก็บค่ารักษา (ที่มา: สกส. CSOP Billtran)"
* . ^definition = "ยอดเงินรวมการเรียกเก็บค่ารักษา"
* value[x] 1..
* value[x] only Money
* valueMoney.currency = #THB (exactly)


Extension: EX_CHI_TotalOtherPay
Id: ex-claim-total-otherpay
Title: "Claim: CHI - Total Other Pay"
Description: "ยอดเงินรวมส่วนที่สิทธิฯ หรือผู้ร่วมจ่ายอื่น ร่วมจ่าย (ที่มา: สกส. CSOP Billtran)"
* ^url = $EX_CHI_TotalOtherPay
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim"
* . ^short = "ยอดเงินรวมส่วนที่สิทธิฯ หรือผู้ร่วมจ่ายอื่น ร่วมจ่าย (ที่มา: สกส. CSOP Billtran)"
* . ^definition = "ยอดเงินรวมส่วนที่สิทธิฯ หรือผู้ร่วมจ่ายอื่น ร่วมจ่าย"
* value[x] 1..
* value[x] only Money
* valueMoney.currency = #THB (exactly)


Extension: EX_CHI_ReimburserType
Id: ex-chi-claim-reimburser-type
Title: "Claim: CHI - Reimburser Type"
Description: "ประเภทผู้เบิก (ที่มา: สกส. CSOP BillDisp)"
* ^url = $EX_CHI_ReimburserType
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim"
* . ^short = "ประเภทผู้เบิก (ที่มา: สกส. CSOP BillDisp)"
* . ^definition = "ประเภทผู้เบิก"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_CHI_ReimburserType (extensible)



Extension: EX_CHI_ItemCharge
Id: ex-claim-item-charge
Title: "Claim: CHI - Item Charge"
Description: "ราคาขายต่อหน่วย (ที่มา: สกส. CSOP Billtran)"
* ^url = $EX_CHI_ItemCharge
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim.item"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail.subDetail"
* . ^short = "ราคาขายต่อหน่วย (ที่มา: สกส. CSOP Billtran)"
* . ^definition = "ราคาขายต่อหน่วย"
* value[x] 1..
* value[x] only Money
* valueMoney.currency = #THB (exactly)


Extension: EX_CHI_ItemNetCharge
Id: ex-claim-item-net-charge
Title: "Claim: CHI - Item Net Charge"
Description: "รวมราคาขาย (ที่มา: สกส. CSOP Billtran)"
* ^url = $EX_CHI_ItemNetCharge
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim.item"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail.subDetail"
* . ^short = "รวมราคาขาย (ที่มา: สกส. CSOP Billtran)"
* . ^definition = "รวมราคาขาย"
* value[x] 1..
* value[x] only Money
* valueMoney.currency = #THB (exactly)



Extension: EX_CHI_ClaimCondition
Id: ex-chi-claim-condition
Title: "Claim: CHI - Item Claim Condition"
Description: "เงื่อนไขกำกับการเบิก (ที่มา: สกส. CSOP Billtran)"
* ^url = $EX_CHI_ClaimCondition
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim.item"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail.subDetail"
* . ^short = "เงื่อนไขกำกับการเบิก (ที่มา: สกส. CSOP Billtran)"
* . ^definition = "เงื่อนไขกำกับการเบิก"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_CHI_ClaimCondition (extensible)



Extension: EX_CHI_AuthDateTime
Id: ex-chi-claim-auth-datetime
Title: "Claim: CHI - Auth Datetime"
Description: "วันที่และเวลาที่ ได้ AuthCode ตอบรับจากระบบ (ที่มา: สกส. CIPN ClaimAuth)"
* ^url = $EX_CHI_AuthDateTime
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim.insurance.preAuthRef"
* . ^short = "วันที่และเวลาที่ ได้ AuthCode ตอบรับจากระบบ (ที่มา: สกส. CIPN ClaimAuth)"
* . ^definition = "วันที่และเวลาที่ ได้ AuthCode ตอบรับจากระบบ"
* value[x] 1..
* value[x] only dateTime


Extension: EX_CHI_ProjectCode
Id: ex-chi-project-code
Title: "Claim: CHI - Project Code"
Description: "รหัสเบิกโครงการพิเศษหรือเฉพาะกิจ (ที่มา: สกส. CIPN ClaimAuth, SSI IPADT)"
* ^url = $EX_CHI_ProjectCode
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim"
* . ^short = "รหัสเบิกโครงการพิเศษหรือเฉพาะกิจ (ที่มา: สกส. CIPN ClaimAuth, SSI IPADT)"
* . ^definition = "รหัสเบิกโครงการพิเศษหรือเฉพาะกิจ"
* value[x] 1..
* value[x] only string



Extension: EX_CHI_EventCode
Id: ex-chi-event-code
Title: "Claim: CHI - Event Code"
Description: "รหัสเบิกเหตุการณ์พิเศษหรือเฉพาะกิจ (ที่มา: สกส. CIPN ClaimAuth, SSI IPADT)"
* ^url = $EX_CHI_EventCode
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim"
* . ^short = "รหัสเบิกเหตุการณ์พิเศษหรือเฉพาะกิจ (ที่มา: สกส. CIPN ClaimAuth, SSI IPADT)"
* . ^definition = "รหัสเบิกเหตุการณ์พิเศษหรือเฉพาะกิจ"
* value[x] 1..
* value[x] only string




Extension: EX_CHI_TotalDiscount
Id: ex-chi-claim-total-discount
Title: "Claim: CHI - Total Discount"
Description: "ส่วนลดทั้งหมดนอกส่วนลดในรายการ BillItems (ที่มา: สกส. CIPN Invoices)"
* ^url = $EX_CHI_TotalDiscount
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim"
* . ^short = "ส่วนลดทั้งหมดนอกส่วนลดในรายการ BillItems (ที่มา: สกส. CIPN Invoices)"
* . ^definition = "ส่วนลดทั้งหมดนอกส่วนลดในรายการ BillItems"
* value[x] 1..
* value[x] only Money
* valueMoney.currency = #THB (exactly)


Extension: EX_CHI_TotalDrg
Id: ex-claim-total-drg
Title: "Claim: CHI - Total DRG"
Description: "ยอดค่าใช้จ่ายส่วนที่ใช้กับ DRG (ที่มา: สกส. CIPN Invoices)"
* ^url = $EX_CHI_TotalDrg
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim"
* . ^short = "ยอดค่าใช้จ่ายส่วนที่ใช้กับ DRG (ที่มา: สกส. CIPN Invoices)"
* . ^definition = "ยอดค่าใช้จ่ายส่วนที่ใช้กับ DRG"
* value[x] 1..
* value[x] only Money
* valueMoney.currency = #THB (exactly)


Extension: EX_CHI_TotalXDrg
Id: ex-claim-total-xdrg
Title: "Claim: CHI - Total X DRG"
Description: "ยอดค่าใช้จ่ายเบิกนอก DRG (ที่มา: สกส. CIPN Invoices)"
* ^url = $EX_CHI_TotalXDrg
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim"
* . ^short = "ยอดค่าใช้จ่ายเบิกนอก DRG (ที่มา: สกส. CIPN Invoices)"
* . ^definition = "ยอดค่าใช้จ่ายเบิกนอก DRG"
* value[x] 1..
* value[x] only Money
* valueMoney.currency = #THB (exactly)


Extension: EX_CHI_ItemDiscount
Id: ex-claim-item-discount
Title: "Claim: CHI - Item Discount"
Description: "ส่วนลดในรายการ (ที่มา: สกส. CIPN Invoices)"
* ^url = $EX_CHI_ItemDiscount
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim.item"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail.subDetail"
* . ^short = "ส่วนลดในรายการ (ที่มา: สกส. CIPN Invoices)"
* . ^definition = "ส่วนลดในรายการ"
* value[x] 1..
* value[x] only Money
* valueMoney.currency = #THB (exactly)


Extension: EX_CHI_ItemClaimCat
Id: ex-chi-item-claimcat
Title: "Claim: Item Claim Category"
Description: "รหัสประเภทการเบิก (ที่มา: สกส. CIPN Invoices)"
* ^url = $EX_CHI_ItemClaimCat
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim.item"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail.subDetail"
* . ^short = "รหัสประเภทการเบิก (ที่มา: สกส. CIPN Invoices)"
* . ^definition = "รหัสประเภทการเบิก (ที่มา: สกส. CIPN Invoices)"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_CHI_ItemClaimCat (extensible)


Extension: EX_CHI_ItemRevDateTime
Id: ex-chi-item-rev-datetime
Title: "Claim: CHI - Item Revision Datetime"
Description: "วันที่ล่าสุดของการปรับปรุงรายการ (ที่มา: สกส. CIPN Invoices)"
* ^url = $EX_CHI_ItemRevDateTime
* ^status = #active
* ^experimental = false
* ^date = "2023-01-17T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Claim.item"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail"
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.detail.subDetail"
* . ^short = "วันที่ล่าสุดของการปรับปรุงรายการ (ที่มา: สกส. CIPN Invoices)"
* . ^definition = "วันที่ล่าสุดของการปรับปรุงรายการ"
* value[x] 1..
* value[x] only dateTime