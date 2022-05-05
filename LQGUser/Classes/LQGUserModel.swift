//
//  LQGUserModel.swift
//  LQGUser
//
//  Created by 罗建
//  Copyright (c) 2021 罗建. All rights reserved.
//

import Foundation
import LQGBaseModel

/// 用户模型类
@objcMembers public class LQGUserModel: LQGBaseModel {
    
    /// 用户ID
    public var userId: String?
    
    /// 用户令牌
    public var token: String?
    
}
