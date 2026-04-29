import { describe, it, expect } from "vitest"
import isPalindrome from "./isPalindrome"

describe("isPalindrome", () => {
   it("Karim", () => {
      expect(isPalindrome("karim")).toBe(false)
   })
   it("Johan", () => {
      expect(isPalindrome("johan")).toBe(false)
   })
   it("kayak", () => {
      expect(isPalindrome("kayak")).toBe(true)
   })
   it("radar", () => {
      expect(isPalindrome("radar")).toBe(true)
   })
   it("Kayak", () => {
      expect(isPalindrome("Kayak")).toBe(true)
   })
   it("bonjour", () => {
      expect(isPalindrome("bonjour")).toBe(false)
   })
   it("", () => {
      expect(isPalindrome("")).toBe(false)
   })
   it("(null)", () => {
      expect(isPalindrome(null)).toBe(false)
   })
   it("123", () => {
      expect(isPalindrome("123")).toBe(false)
   })

})