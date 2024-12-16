//
//  AccountForm.swift
//  FormValidationStarter
//
//  Created by 羅壽之 on 2024/12/16.
//

import Foundation
import Combine

class AccountForm: ObservableObject {
    
    @Published var email = ""
    @Published var emailValidate = false
    
    @Published var password = ""
    @Published var passwordLengthValidate = false
    @Published var passwordUppercaseValidate = false
    
    @Published var passwordConfirm = ""
    @Published var passwordConfirmValidate = false
    
    private var cancellableSet = Set<AnyCancellable>()
    
    init() {
        // check the email format
        // emailRegex = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
        // format: "SELF MATCHES %@"
        
        
        // check the password length
        
        
        // check the password letters
        
        
        // check the consistency of re-typing the password
        
        
    }
}

