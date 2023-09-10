// HumanName

// * prefix = "นาย"
//   * extension
//     * valueCodeableConcept
//       * coding[0] = $CS_DOPA_NamePrefix#003 "นาย"
//       * text = "นาย"
Extension: EX_TH_HumanNamePrefixCode
Id: ex-humanname-name-prefix
Title: "HumanName: Name Prefix Code"
Description: "รหัสคำนำหน้าชื่อ"
* ^url = $EX_TH_HumanNamePrefixCode
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "HumanName.prefix"
* . ^short = "รหัสคำนำหน้าชื่อ"
* . ^definition = "รหัสคำนำหน้าชื่อ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_DOPA_NamePrefix (extensible)





// Address

// * extension[0]
//   * valueCodeableConcept = $CS_DOPA_Location#120102 "จังหวัดนนทบุรี อำเภอเมืองนนทบุรี ตำบลตลาดขวัญ"
// Alias: $EX_TH_AddressDopaCode = https://fhir-ig.sil-th.org/mophpc/Extension/TH-address-code

Extension: EX_TH_AddressDopaCode
Id: ex-address-address-code
Title: "Address: DOPA address code"
Description: "รหัสที่อยู่ ตามกรมการปกครอง"
* ^url = $EX_TH_AddressDopaCode
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Address"
* . ^short = "รหัสที่อยู่ ตามกรมการปกครอง"
* . ^definition = "รหัสที่อยู่ ตามกรมการปกครอง"
* extension contains
    province 0..1 and
    district 0..1 and
    subdistrict 0..1
* extension[province] only Extension
* extension[province] ^short = "จังหวัด"
* extension[province] ^definition = "จังหวัด"
  * url = "province" (exactly)
  * value[x] 1..
  * value[x] only CodeableConcept
  * value[x] from $VS_DOPA_Location_City (extensible)
* extension[district] only Extension
* extension[district] ^short = "อำเภอ"
* extension[district] ^definition = "อำเภอ"
  * url = "district" (exactly)
  * value[x] 1..
  * value[x] only CodeableConcept
  * value[x] from $VS_DOPA_Location_District (extensible)
* extension[subdistrict] only Extension
* extension[subdistrict] ^short = "ตำบล"
* extension[subdistrict] ^definition = "ตำบล"
  * url = "subdistrict" (exactly)
  * value[x] 1..
  * value[x] only CodeableConcept
  * value[x] from $VS_DOPA_Location_Subdistrict (extensible)


Extension: EX_TH_AddressStructuredLine
Id: ex-address-structured-line
Title: "Address: Structured Address Line"
Description: "ที่อยู่ แบบแยกเป็นรายละเอียดข้อมูลย่อย"
* ^url = $EX_TH_AddressStructuredLine
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Address"
* . ^short = "ที่อยู่ แบบแยกเป็นรายละเอียดข้อมูลย่อย"
* . ^definition = "ที่อยู่ แบบแยกเป็นรายละเอียดข้อมูลย่อย"
* extension contains
    number 0..1 and
    buildingVillage 0..1 and
    villageNo 0..1 and
    road 0..1 and
    lane 0..1
* extension[number] only Extension
* extension[number] ^short = "บ้านเลขที่"
* extension[number] ^definition = "บ้านเลขที่"
  * url = "number" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[buildingVillage] only Extension
* extension[buildingVillage] ^short = "อาคาร/หมู่บ้าน"
* extension[buildingVillage] ^definition = "อาคาร/หมู่บ้าน"
  * url = "buildingVillage" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[villageNo] only Extension
* extension[villageNo] ^short = "หมู่ที่"
* extension[villageNo] ^definition = "หมู่ที่"
  * url = "villageNo" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[road] only Extension
* extension[road] ^short = "ถนน"
* extension[road] ^definition = "ถนน"
  * url = "road" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[lane] only Extension
* extension[lane] ^short = "ซอย"
* extension[lane] ^definition = "ซอย"
  * url = "lane" (exactly)
  * value[x] 1..
  * value[x] only string








  // * extension[+]

  //   * valueReference = Reference(location-Address1-home1)
  //     * insert GeneralReference($ID_DopaHouseNo, "XXXXXXXXXXX", "123 คอนโดพัฒนานนท์")
// Alias: $EX_TH_AddressHomeReference = https://fhir-ig.sil-th.org/mophpc/Extension/TH-home-reference
Extension: EX_TH_AddressHomeReference
Id: ex-address-home-reference
Title: "Address: Reference to Home"
Description: "การอ้างอิง Location resource"
* ^url = $EX_TH_AddressHomeReference
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Address"
* . ^short = "ระดับการศึกษา"
* . ^definition = "ระดับการศึกษา"
* value[x] 1..
* value[x] only Reference(Location)




  // * extension[+]

  //   * valueCodeableConcept = $CS_THCC_HouseType#3 "คอนโดมิเนียม"
// Alias: $EX_TH_AddressHouseType = https://fhir-ig.sil-th.org/mophpc/Extension/TH-house-type

Extension: EX_TH_AddressHouseType
Id: ex-address-house-type
Title: "Address: House Type"
Description: "ลักษณะของที่อยู่"
* ^url = $EX_TH_AddressHouseType
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[=].expression = "Address"
* ^context[+].type = #element
* ^context[=].expression = "Location"
* . ^short = "ลักษณะของที่อยู่"
* . ^definition = "ลักษณะของที่อยู่"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_HouseType (extensible)





Extension: EX_TH_MedicationRequestDosageCode
Id: ex-medicationrequest-med-dosage-code
Title: "Dosage: Medication Sig Code"
Description: "รหัสวิธีการใช้ยา"
* ^url = $EX_TH_MedicationRequestDosageCode
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Dosage"
* . ^short = "รหัสวิธีการใช้ยา"
* . ^definition = "รหัสวิธีการใช้ยา"
* value[x] 1..
* value[x] only string

