// Alias: $EX_TH_PractitionerRoleProviderMovement = https://fhir-ig.sil-th.org/mophpc/Extension/TH-provider-move
// * extension[0]
//   * extension[0]
//     * url = "movefrom"
//     * valueReference = Reference(Organization/organization-second) "โรงพยาบาลสำรอง"
//   * extension[+]
//     * url = "period"
//     * valuePeriod
//       * start = "2012-04-25"
//       * end = "2015-01-01"
//   * extension[+]
//     * url = "moveto"
//     * valueReference = Reference(Organization/organization-main) "โรงพยาบาลตัวอย่าง"
Extension: EX_TH_PractitionerRoleProviderMovement
Id: ex-practitionerrole-provider-move
Title: "PractitionerRole: Provider Movement"
Description: "ข้อมูลการย้ายสถานพยาบาล"
* ^url = $EX_TH_PractitionerRoleProviderMovement
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* . ^short = "ข้อมูลการย้ายสถานพยาบาล"
* . ^definition = "ข้อมูลการย้ายสถานพยาบาล"
* extension contains
    movefrom 0..1 and
    period 0..1 and
    moveto 0..1
* extension[movefrom] only Extension
* extension[movefrom] ^short = "รหัสสถานพยาบาลที่ย้ายมา"
* extension[movefrom] ^definition = "รหัสสถานพยาบาลที่ย้ายมา"
  * url = "movefrom" (exactly)
  * value[x] 1..
  * value[x] only Reference(Organization)
* extension[moveto] only Extension
* extension[moveto] ^short = "รหัสสถานพยาบาลที่ย้ายไป"
* extension[moveto] ^definition = "รหัสสถานพยาบาลที่ย้ายไป"
  * url = "moveto" (exactly)
  * value[x] 1..
  * value[x] only Reference(Organization)