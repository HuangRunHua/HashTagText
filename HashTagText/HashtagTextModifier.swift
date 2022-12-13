//
//  HashtagTextModifier.swift
//  HashTagText
//
//  Created by Huang Runhua on 12/9/22.
//

import SwiftUI

protocol TextModifier {
    associatedtype Body : View
    func body(text: HashtagText, action: @escaping (String)->()) -> Self.Body
}

extension HashtagText {
    func modifier<M>(_ modifier: M) -> some View where M: TextModifier {
        modifier.body(text: self) { _ in
            
        }
    }
}


struct HashtagTextModifier: TextModifier {
    var color: Color = .blue
    var font: Font = .system(.body)

    func body(text: HashtagText, action: @escaping (String)->()) -> some View {
        let words = text.text.split(separator: " ")
        var output: Text = Text("")
        for word in words {
            if word.hasPrefix("#") {
                output = output + Text(" ") +
                    Text(String(word))
                        .foregroundColor(color)
            } else {
                output = output + Text(" ") + Text(String(word))
            }
        }
        return output
    }
}
