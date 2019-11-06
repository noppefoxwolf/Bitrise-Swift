import XCTest
@testable import BitriseSwift

final class ANSIKitTests: XCTestCase {
    func testExample() {
        let json = ##"{"original_build_params":{"hoge":null}}"##
        let item = try! JSONDecoder().decode(V0BuildListAllResponseItemModel.self, from: json.data(using: .utf8)!)
        
        let json2 = try! JSONEncoder().encode(AnyCodable(item.originalBuildParams))
        
        print(String.init(data: json2, encoding: .utf8))
//        let params = item.originalBuildParams as Any
//        let data = try! JSONSerialization.data(withJSONObject: params, options: .prettyPrinted)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
////
////  ANSIKitTests.swift
////  ANSIKitTests
////
////  Created by Matthew Delves on 18/02/2015.
////  Copyright (c) 2015 Matthew Delves. All rights reserved.
////
//
//import Quick
//import Nimble
//import ANSIKit
//
//class ANSISpec: QuickSpec {
//  override func spec() {
//    describe("attributedString") {
//      it("constructs") {
//        let filePath = NSBundle(forClass: ANSISpec.self).pathForResource("log", ofType: "txt")
//        var dataResponse: NSData?
//        let result:NSString = NSString(contentsOfFile: filePath!, encoding: NSUTF8StringEncoding, error: nil)!
//        let helper = AnsiHelper(color: UIColor.whiteColor(), font: UIFont.preferredFontForTextStyle(UIFontTextStyleBody))
//        let attributed = ansiEscapedAttributedString(helper, result as String)
//
//        expect(attributed).notTo(beNil())
//      }
//    }
//
//    describe("simple cases") {
//      it("input that ends in a newline will not include that newline") {
//        let input = "hello\n"
//        let expected = "hello"
//
//
//      }
//
//      it("closes colors that get opened") {
//
//      }
//
//      it("skips over colors when backspacing") {
//
//      }
//
//      it("treats \\x1b[39m as a reset") {
//
//      }
//
//      it("starts overwriting characters when you \r midway through something") {
//
//      }
//
//      it("colors across multiple lines") {
//
//      }
//
//      it("allows you to control the cursor forwards") {
//
//      }
//
//      it("doesn't allow you to jump down lines if the line doesn't exist") {
//
//      }
//
//      it("allows you to control the cursor backwards") {
//
//      }
//
//      it("allows you to control the cursor upwards") {
//
//      }
//
//      it("allows you to control the cursor downards") {
//
//      }
//
//      it("doesn't blow up if you go back too many charcters") {
//
//      }
//
//      it("\\x1b[1K clears everything before it") {
//
//      }
//
//      it("clears everything after the \\x1b[0K") {
//
//      }
//
//      it("handles \\x1b[0G ghetto style") {
//
//      }
//
//      it("preserves characters already written in a certain color") {
//
//      }
//
//      it("replaces empty lines with non-breaking spaces") {
//
//      }
//
//      it("preserves opening colors when using \\x1b[0G") {
//
//      }
//
//      it("allows erasing the current line up to a point") {
//
//      }
//
//      it("allows clearing of the current line"){
//
//      }
//
//      it("doesn't close spans if no colors have been opened") {
//
//      }
//
//      it("\\x1b[K correctly clears all previous parts of the string") {
//
//      }
//
//      it("collapses many spans of the same color into 1") {
//
//      }
//
//      it("escapes HTML") {
//
//      }
//
//      it("handles background colors") {
//
//      }
//
//      it("handles xterm colors") {
//
//      }
//
//      it("ignores broken escape characters") {
//
//      }
//
//      it("handles colors with 3 attributes") {
//
//      }
//
//      it("ends underlining with \\x1b[24") {
//
//      }
//
//      it("ends bold with \\x1b[21") {
//
//      }
//
//      it("ends bold with \\x1b[22") {
//
//      }
//
//      it("ends crossed out with \\x1b[29") {
//
//      }
//
//      it("ends italic out with \\x1b[23") {
//
//      }
//
//      it("ends decreased intensity with \\x1b[22") {
//
//      }
//    }
//  }
//}
