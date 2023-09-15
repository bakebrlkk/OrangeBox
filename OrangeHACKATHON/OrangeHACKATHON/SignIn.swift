//
//  SignIn.swift
//  OrangeHACKATHON
//
//  Created by bakebrlk on 13.09.2023.
//

import UIKit
import SnapKit

class SignIn: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    private func setUI(){
        view.backgroundColor = UIColor(named: "green")
        navigationItem.title = "Welcome to Back!"
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        view.addSubview(email)
        email.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(50)
        }
        
        view.addSubview(password)
        password.snp.makeConstraints { make in
            make.top.equalTo(email.snp.bottom).offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(50)
        }
        
        view.addSubview(logo)
        logo.snp.makeConstraints { make in
            make.bottom.equalTo(email.snp.top).offset(-16)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(150)
        }
        
        view.addSubview(logUp)
        logUp.addTarget(self, action: #selector(pushSingUp), for: .touchUpInside)
        logUp.snp.makeConstraints { make in
            make.top.equalTo(password.snp.bottom).offset(10)
            make.trailing.equalToSuperview().offset(-20)
        }
        
        view.addSubview(textHaveAccount)
        textHaveAccount.snp.makeConstraints { make in
            make.trailing.equalTo(logUp.snp.leading).offset(-10)
            make.top.equalTo(password.snp.bottom).offset(16)
        }
        
        view.addSubview(btnSignIn)
        btnSignIn.snp.makeConstraints { make in
            make.top.equalTo(textHaveAccount.snp.bottom).offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(50)
        }
        
    }
    
    @objc func pushSingUp(){
        navigationController?.pushViewController(SignUp(), animated: true)
    }
    
    private let btnSignIn: UIButton = {
        let btn = UIButton()
        btn.setTitle("Sign In", for: .normal)
        btn.layer.cornerRadius = 16
        btn.backgroundColor = .orange.withAlphaComponent(0.9)
        return btn
    }()
    
    private let textHaveAccount: UILabel = {
     
        let text = UILabel()
        text.text = "Don't have an account?"
        text.textColor = .black
        text.font = .systemFont(ofSize: 14)
       
        return text
    }()
    
    private let logUp: UIButton = {
        let btn = UIButton()
        btn.setTitle("Sign Up", for: .normal)
        btn.setTitleColor(UIColor(named: "yellow"), for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 14)
        return btn
    }()
    
    private let logo: UIImageView = {
        let logo = UIImageView(image: UIImage(named: "logo3"))
        return logo
    }()
    
    private lazy var email: UITextField = {
        let tx = textField(text: "Email")
        return tx
    }()
    
    private lazy var password: UITextField = {
        let tx = textField(text: "Password")
        tx.isSecureTextEntry = true
        return tx
    }()
    
    private func textField(text: String) -> UITextField{
        let tx = TextField()
        tx.placeholder = text
        tx.backgroundColor = .white
        return tx
    }
}
