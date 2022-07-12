//
//  MessageKind.swift
//  DirectLinkCos
//
//  Created by Raghuram on 12/07/22.
//

import Foundation

public enum MessageKind {

    /// A standard text message.
    ///
    /// - Note: The font used for this message will be the value of the
    /// `messageLabelFont` property in the `MessagesCollectionViewFlowLayout` object.
    ///
    /// Using `MessageKind.attributedText(NSAttributedString)` doesn't require you
    /// to set this property and results in higher performance.
    case text(String)
    
    /// A message with attributed text.
    case attributedText(NSAttributedString)

    /// A custom message.
    /// - Note: Using this case requires that you implement the following methods and handle this case:
    ///   - MessagesDataSource: customCell(for message: MessageType, at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> UICollectionViewCell
    ///   - MessagesLayoutDelegate: customCellSizeCalculator(for message: MessageType, at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> CellSizeCalculator
    case custom(Any?)

    // MARK: - Not supported yet

//    case system(String)
//
//    case placeholder

}
