//
//  YDSnackBar.swift
//  YDSnackBarComponent
//
//  Created by Douglas Hennrich on 30/10/20.
//

import UIKit
import MaterialComponents.MaterialSnackbar

public protocol YDSnackBarDelegate: AnyObject {
  func onSnackAction()
}

public class YDSnackBar {
  // MARK: Properties
  public static let shared = YDSnackBar()
  public weak var delegate: YDSnackBarDelegate?

  // MARK: Init
  private init() {
    let config = MDCSnackbarManager.default
    config.buttonFont = UIFont.systemFont(ofSize: 16)
    config.setButtonTitleColor(UIColor(red: 255/255, green: 205/255, blue: 39/255, alpha: 1), for: .normal)
    config.messageTextColor = UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1)
    config.snackbarMessageViewBackgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
    config.uppercaseButtonTitle = false
  }

  // MARK: Actions
  public func showMessage(_ message: String, actionTitle: String) {
    // Action
    let action = MDCSnackbarMessageAction()
    action.handler = { [weak self] in
      self?.delegate?.onSnackAction()
    }
    action.title = actionTitle


    // Message
    let messageView = MDCSnackbarMessage()
    messageView.action = action
    messageView.text = message

    // Show
    MDCSnackbarManager.default.show(messageView)
  }
}
