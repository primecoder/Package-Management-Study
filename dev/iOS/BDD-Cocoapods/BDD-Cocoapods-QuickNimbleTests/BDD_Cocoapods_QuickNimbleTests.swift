import Quick
import Nimble

class BDD_Cocoapods_QuickNimbleTests: QuickSpec {

    func isWorking() -> Bool {
        return true
    }

    override func spec() {

        it("is working") {
            expect(self.isWorking()).to(beTrue())
        }

        context("When project has just been build") {
            it("is working") {
                expect(self.isWorking()).to(beTrue())
            }
        }

        describe("Quick and Nimble") {
            it("is working") {
                expect(self.isWorking()).to(beTrue())
            }
        }

        describe("Quick and Nimble") {
            context("When project has just been build") {
                it("is working") {
                    expect(self.isWorking()).to(beTrue())
                }
            }
        }
    }
}
