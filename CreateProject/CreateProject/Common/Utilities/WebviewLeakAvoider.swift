//
//  WebviewLeakAvoider.swift
//  CreateProject
//
//  Created by Hyoju Son on 2/11/24.
//

import UIKit
import WebKit

final class WebviewLeakAvoider: NSObject, WKScriptMessageHandler {

    weak var delegate: WKScriptMessageHandler?

    init(delegate: WKScriptMessageHandler) {
        self.delegate = delegate
        super.init()
    }

    func userContentController(
        _ userContentController: WKUserContentController,
        didReceive message: WKScriptMessage
    ) {
        self.delegate?.userContentController(userContentController, didReceive: message)
    }
}
