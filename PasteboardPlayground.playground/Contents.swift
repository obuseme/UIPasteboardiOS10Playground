//: Playground - noun: a place where people can play
// iOS 10 UIPasteboard Example
// Copyright 2016, cleanswifter.com
// http://cleanswifter.com/uipasteboard-ios-10-example/

import UIKit

// Setup, let's put some stuff in the UIPasteboard

let pasteboard = UIPasteboard.general()
pasteboard.string = "andy"
pasteboard.url = URL(string: "http://cleanswifter.com")
pasteboard.image = UIImage()
pasteboard.color = UIColor.red()

// Understanding the UIPasteboard contents

if pasteboard.hasStrings {
    print("The pasteboard has Strings!")
}
if pasteboard.hasURLs {
    print("The pasteboard has URLs!")
}
if pasteboard.hasImages {
    print("The pasteboard has images!")
}
if pasteboard.hasColors {
    print("The pasteboard has colors!")
}

// Controlling the lifetime of a UIPasteboard item

// Add a string
let aLocalOnlyStringKey = "Local only string key"
let aLocalOnlyStringValue = "Local only string value"
// Set the string in the LOCAL pasteboard
pasteboard.setItems([[aLocalOnlyStringKey: aLocalOnlyStringValue]], options: [UIPasteboardOption.localOnly : true])

let aExpiringStringKey = "Local only string key"
let aExpiringStringValue = "Local only string value"
// Create a date 24 hours from now
let expirationDateOfTomorrow = Date().addingTimeInterval(60*60*24)
// Add the string and mark it to expire 24 hours from now
pasteboard.setItems([[aExpiringStringKey: aExpiringStringValue]], options: [UIPasteboardOption.expirationDate: expirationDateOfTomorrow])

