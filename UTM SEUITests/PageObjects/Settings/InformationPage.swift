//
// Copyright © 2021 osy. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import XCTest

public class InformationPage : BaseTest {
    
    override var rootElement: XCUIElement{
        return app.buttons["Settings"]
    }

    // TODO: Add methods for icon style

    //PageElements
    lazy var backButton = app.buttons["Settings"]
    lazy var styleButton = app.buttons["Style"]

    lazy var nameField = app.textFields["Name"]
    // Verify not a text editor not text field
    lazy var notesField = app.textViews["Notes"]

    @discardableResult
    func tapBack(completion: Completion=nil)-> Self{
        log("tap the back button")
        backButton.tap()
        return self
    }

    @discardableResult
    func tapStyle(completion: Completion=nil)-> Self{
        log("tap the style button")
        styleButton.tap()
        return self
    }

    @discardableResult
    func tapName(completion: Completion=nil)-> Self{
        log("tap the name field")
        nameField.tap()
        return self
    }

    @discardableResult
    func fillName(_ text: String, completion: Completion=nil)-> Self{
        log("type \(text) into the name field")
        nameField.typeText(text)
        return self
    }

    @discardableResult
    func tapNotes(completion: Completion=nil)-> Self{
        log("tap the notes field")
        notesField.tap()
        return self
    }

    @discardableResult
    func fillNotes(_ text: String, completion: Completion=nil)-> Self{
        log("type \(text) into the notes field")
        log("FAILS TO FILL, fix this by pasting in the field later but not a priority rn")
        return self
    }
}
