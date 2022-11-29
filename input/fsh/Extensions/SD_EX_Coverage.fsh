// Alias: $EX_TH_CoverageContractedProvider = https://fhir-ig.sil-th.org/mophpc/Extension/TH-provider-type-coverage
// * extension[+]
//   * url = $EX_TH_CoverageContractedProvider
//   * extension[0]
//     * url = "type"
//     * valueCodeableConcept
//       * coding[0] = $CS_Meta_ProviderTypeCoverage#secondary "สถานบริการรอง"
//       * text = "สถานบริการรอง"
//   * extension[+]
//     * url = "provider"
//     * valueReference = Reference(organization-second)
//       * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง 2")

Extension: EX_TH_CoverageContractedProvider
Id: ex-coverage-contracted-provider
Title: "Coverage: Contracted Provider"
Description: "สถานพยาบาลคู่สัญญา"
* ^url = $EX_TH_CoverageContractedProvider
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Coverage"
* . 0..*
* . ^short = "สถานพยาบาลคู่สัญญา"
* . ^definition = "สถานพยาบาลคู่สัญญา"
* url = $EX_TH_CoverageContractedProvider (exactly)
* extension contains
    type 0..1 and
    provider 0..1 and
    period 0..1
* extension[type] only Extension
* extension[type] ^short = "ชนิดของสถานพยาบาลคู่สัญญา"
* extension[type] ^definition = "ชนิดของสถานพยาบาลคู่สัญญา"
  * url = "type" (exactly)
  * value[x] 1..
  * value[x] only CodeableConcept
  * value[x] from $VS_Meta_ProviderTypeCoverage (extensible)  
* extension[provider] only Extension
* extension[provider] ^short = "รหัสหรืออ้างอิงสถานพยาบาล"
* extension[provider] ^definition = "รหัสหรืออ้างอิงสถานพยาบาล"
  * url = "provider" (exactly)
  * value[x] 1..
  * value[x] only Reference(Organization)
* extension[period] only Extension
* extension[period] ^short = "วันที่ลงทะเบียนสถานบริการหลัก"
* extension[period] ^definition = "วันที่ลงทะเบียนสถานบริการหลัก"
  * url = "period" (exactly)
  * value[x] 1..
  * value[x] only Period
