//
//  MessageType.swift
//  DirectLinkCos
//
//  Created by Raghuram on 12/07/22.
//

import Foundation

public protocol MessageType {

    /// The sender of the message.
    var sender: SenderType { get }

    /// The unique identifier for the message.
    var messageId: String { get }

    /// The date the message was sent.
    var sentDate: Date { get }

    /// The kind of message and its underlying kind.
    var kind: MessageKind { get }

}
