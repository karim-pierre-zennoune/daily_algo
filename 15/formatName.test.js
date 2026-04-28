import { describe, it, expect } from "vitest"
import formatName from "./formatName"

describe("formatName", () => {


    
   it("karim zennoune => Karim ZENNOUNE", () => {
      expect(formatName("karim","zennoune")).toBe("Karim ZENNOUNE")
   })




   it("2 chaines vides", () => {
      expect(formatName("", "")).toBe("")
   })
//     it("2 entiers", () => {
//       expect(formatName(0, 0)).toBe("")
//    })
      it("kARIM ZeNnOuNe => KARIM ZENOUNE", () => {
      expect(formatName("kARIM", "ZeNnOuNe")).toBe("KARIM ZENNOUNE")
   })
})
