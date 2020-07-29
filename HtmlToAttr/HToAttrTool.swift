//
//  HToAttrTool.swift
//  HtmlToAttr
//
//  Created by suifumin on 2020/7/29.
//  Copyright © 2020 suifumin. All rights reserved.
//

import UIKit

class HToAttrTool: NSObject {
    func html2AttributedString(str:String) -> NSAttributedString {
     return try! NSAttributedString(
        data: str.data(using: .unicode, allowLossyConversion: true)!,
        options:[.documentType: NSAttributedString.DocumentType.html,
        .characterEncoding: String.Encoding.utf8.rawValue],
        documentAttributes: nil)
    }
}
