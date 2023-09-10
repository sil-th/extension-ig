// Alias: $EX_TH_LocationHouseOwner = https://fhir-ig.sil-th.org/mophpc/Extension/TH-house-owner
// * extension[+]
//   * valueReference = Reference(Patient/patient-patient1)
Extension: EX_TH_LocationHouseOwner
Id: ex-location-house-owner
Title: "Location: House Owner"
Description: "รหัส เจ้าบ้าน"
* ^url = $EX_TH_LocationHouseOwner
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Location"
* . ^short = "รหัส เจ้าบ้าน"
* . ^definition = "รหัส เจ้าบ้าน"
* extension contains
    pid 0..1 and
    hcode 0..1
* extension[pid] only Extension
* extension[pid] ^short = "รหัส PID ของเจ้าบ้าน"
* extension[pid] ^definition = "รหัส PID ของเจ้าบ้าน"
  * url = "pid" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[hcode] only Extension
* extension[hcode] ^short = "รหัส HCODE ของเจ้าบ้าน"
* extension[hcode] ^definition = "รหัส HCODE ของเจ้าบ้าน"
  * url = "hcode" (exactly)
  * value[x] 1..
  * value[x] only string





// Alias: $EX_TH_ManagingPractitioner = https://fhir-ig.sil-th.org/mophpc/Extension/TH-managing-practitioner
// * extension[+]
//   * valueReference = Reference(Practitioner/practitioner-volunteer1) "นาง ใจดี ชอบช่วย"
Extension: EX_TH_LocationResponsibleVolunteer
Id: ex-location-responsible-volunteer
Title: "Location: Responsible Volunteer"
Description: "รหัส อสม."
* ^url = $EX_TH_LocationResponsibleVolunteer
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Location"
* . ^short = "รหัส อสม."
* . ^definition = "รหัส อสม."
* extension contains
    pid 0..1 and
    hcode 0..1
* extension[pid] only Extension
* extension[pid] ^short = "รหัส PID ของเจ้าบ้าน"
* extension[pid] ^definition = "รหัส PID ของเจ้าบ้าน"
  * url = "pid" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[hcode] only Extension
* extension[hcode] ^short = "รหัส HCODE ของเจ้าบ้าน"
* extension[hcode] ^definition = "รหัส HCODE ของเจ้าบ้าน"
  * url = "hcode" (exactly)
  * value[x] 1..
  * value[x] only string





// Alias: $EX_TH_LocationHouseholdCount = https://fhir-ig.sil-th.org/mophpc/Extension/TH-householde-num
// * extension[+]
//   * valueInteger = 1
Extension: EX_TH_LocationHouseholdCount
Id: ex-location-household-count
Title: "Location: Household Count"
Description: "จำนวนครอบครัว"
* ^url = $EX_TH_LocationHouseholdCount
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Location"
* . ^short = "จำนวนครอบครัว"
* . ^definition = "จำนวนครอบครัว"
* value[x] 1..
* value[x] only integer




// Alias: $EX_TH_LocationInMunicipality = https://fhir-ig.sil-th.org/mophpc/Extension/TH-in-municipality
// * extension[+]
//   * valueCodeableConcept = $CS_THCC_InMunicipality#1 "ในเขตเทศบาล"
Extension: EX_TH_LocationInMunicipality
Id: ex-location-in-municipality
Title: "Location: In Municipality"
Description: "ที่ตั้ง อยู่ในหรือนอกเขตเทศบาล"
* ^url = $EX_TH_LocationInMunicipality
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Location"
* . ^short = "ที่ตั้ง อยู่ในหรือนอกเขตเทศบาล"
* . ^definition = "ที่ตั้ง อยู่ในหรือนอกเขตเทศบาล"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_InMunicipality (extensible)




// Alias: $EX_TH_LocationVillageArea = https://fhir-ig.sil-th.org/mophpc/Extension/TH-village-area
// * extension[0]
//   * valueCodeableConcept = $CS_PCU_VillageArea#1 "เทศบาล"
Extension: EX_TH_LocationVillageArea
Id: ex-location-village-area
Title: "Location: Village Area"
Description: "เขตที่ตั้ง อยู่ในหรือนอกเขตเทศบาล"
* ^url = $EX_TH_LocationVillageArea
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Location"
* . ^short = "เขตที่ตั้ง อยู่ในหรือนอกเขตเทศบาล"
* . ^definition = "เขตที่ตั้ง อยู่ในหรือนอกเขตเทศบาล"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_PCU_VillageArea (extensible)




// Alias: $EX_TH_LocationVillageMainHospital = https://fhir-ig.sil-th.org/mophpc/Extension/TH-village-main-hospital
// * extension[+]
//   * valueReference = Reference(Organization/organization-main)
Extension: EX_TH_LocationVillageMainHospital
Id: ex-location-village-main-hospital
Title: "Location: Village Main Hospital"
Description: "โรงพยาบาลหลัก"
* ^url = $EX_TH_LocationVillageMainHospital
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Location"
* . ^short = "โรงพยาบาลหลัก"
* . ^definition = "โรงพยาบาลหลัก"
* value[x] 1..
* value[x] only Reference(Organization)




// Alias: $EX_TH_LocationVillageUnlistDate = https://fhir-ig.sil-th.org/mophpc/Extension/TH-village-unlist-date
// * extension[+]
//   * valueDate = "2022-07-01"
Extension: EX_TH_LocationVillageUnlistDate
Id: ex-location-village-unlist-date
Title: "Location: Village Unlist Date"
Description: "วันที่แยกชุมชนออกนอกเขต"
* ^url = $EX_TH_LocationVillageUnlistDate
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Location"
* . ^short = "วันที่แยกชุมชนออกนอกเขต"
* . ^definition = "วันที่แยกชุมชนออกนอกเขต"
* value[x] 1..
* value[x] only date




