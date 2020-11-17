//
//  SwiftUI_BDD_SPM_Spec.swift
//  SwiftUI_BDD_SPMTests
//
//  Created by random on 3/10/20.
//

import XCTest
import Quick
import Nimble

class SwiftUI_BDD_SPM_Spec: QuickSpec {
    override func spec() {
        describe("Xcode project") {
            context("with SwiftUI+BDD using SPM") {
                it("Build and run") {
                    expect(true).to(beTrue())
                }
            }
        }
    }
}
