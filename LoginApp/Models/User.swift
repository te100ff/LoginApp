//
//  User.swift
//  LoginApp
//
//  Created by Stanislav Testov on 02.04.2021.
//

struct User {
    let login = "Batman"
    let password = "123"
    let about: Person
    let relations: [Family]
    let photo = "Myself"
}

struct Person {
    let name = "Stanislav"
    let surname = "Testov"
    let bio = """
    My name is Stanislav Testov. I was born in Moscow on April 15, 1986.
    I like to listen music, sport.
    And I really want to become iOS developer with Swiftbook courses 🍏
    """
}





enum Family: String {
    case wife = "Anna - wife"
    case son = "Max - son"
    
    var about: String {
        switch self {
        case .wife:
            return "I'm met Anna in 2012 in Croatia. In 2014 we got married 👨‍👩‍👦"
        case .son:
            return "Max was born in July 2015. He loves to play video games 🎮 and dance 🕺"
        }
    }
}








