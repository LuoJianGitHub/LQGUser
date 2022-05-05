//
//  LQGUserManager.swift
//  LQGUser
//
//  Created by 罗建
//  Copyright (c) 2021 罗建. All rights reserved.
//

import UIKit

/// 用户管理类
@objcMembers public class LQGUserManager: NSObject {
    
    /// 单例
    public static let shared = LQGUserManager()
    
    /// 用户状态（false：未登录；true：已登录）
    @objc dynamic public var userStatus: Bool = false
    
    /// 当前登录用户的模型
    public var model: LQGUserModel?
    
    /// 登入
    /// - Parameter userInfo: 用户信息
    public func signIn(userInfo: [AnyHashable: Any]?) {
        self.userStatus = true
        self.model = LQGUserModel.lqg_model(with: userInfo)
        
        self.updateUserInfo()
    }
    
    /// 登出
    public func signOut() {
        self.cleanUserInfo()
        
        self.userStatus = false
        self.model = nil
    }
    
    /// 更新用户信息
    public func updateUserInfo() {
        
    }
    
    /// 清除用户信息
    public func cleanUserInfo() {
        
    }
}
