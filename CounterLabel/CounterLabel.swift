//
//  CounterLabel.swift
//  CounterLabel
//
//  Created by nappannda on 2018/04/21.
//  Copyright © 2018年 nappannda. All rights reserved.
//

import UIKit

public enum CounterMode {
    case descending
    case ascending
    case standard
}

@IBDesignable open class CounterLabel: UILabel {
    public var counterMode = CounterMode.standard
    public var counterMaxLength: Int = 10 {
        didSet {
            updateCounter(contentLength: textView.text.count)
        }
    }
    public var textView: UITextView! {
        didSet {
            textView.delegate = self
            updateCounter(contentLength: textView.text.count)
        }
    }
    @IBInspectable var counterTextColor: UIColor = .black
    @IBInspectable var counterErrorTextColor: UIColor = .red
    
    private func updateCounter(contentLength: Int) {
        switch counterMode {
        case .descending:
            text = "\(counterMaxLength - contentLength)"
        case .ascending:
            text = "\(contentLength)"
        case .standard:
            text = "\(contentLength) / \(counterMaxLength)"
        }
        if contentLength > counterMaxLength {
            textColor = counterErrorTextColor
        } else {
            textColor = counterTextColor
        }
    }
}

extension CounterLabel: UITextViewDelegate {
    public func textViewDidChange(_ textView: UITextView) {
        updateCounter(contentLength: textView.text.count)
    }
}
