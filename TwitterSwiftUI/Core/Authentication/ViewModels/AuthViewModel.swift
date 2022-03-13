//
//  AuthViewModel.swift
//  TwitterSwiftUI
//
//  Created by Frank Bara on 3/7/22.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    
    @Published var userSession: FirebaseAuth.User?
    @Published var didAuthenticateUser = false
    init() {
        // if user is logged in, this will have a value
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: User session is \(self.userSession?.uid)")
    }
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: failed to signin with error: \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            self.userSession = user
            print("DEBUG: Did log user in.")
        }

    }
    
    func register(withEmail email: String, password: String, fullName: String, userName: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: failed to register with error: \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            
            print("DEBUG: User registered successfully!")
            print("DEBUG: registered user: \(self.userSession)")
            
            // data dictionary
            let data = ["email": email, "username": userName.lowercased(), "fullname": fullName, "uid": user.uid]
            
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { _ in
                    self.didAuthenticateUser = true
                }
        }
    }
    func signOut() {
        userSession = nil
        try? Auth.auth().signOut()
    }
}
