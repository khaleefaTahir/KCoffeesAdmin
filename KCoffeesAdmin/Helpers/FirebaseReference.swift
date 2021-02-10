//
//  FirebaseReference.swift
//  KCoffeesAdmin
//
//  Created by mohammed sani hassan on 03/01/2021.
//

import Foundation
import FirebaseFirestore

enum FCollectionReference: String {
    case User
    case Menu
    case Order
    case Basket
}

func FirebaseReference(_ collectionReference: FCollectionReference) -> CollectionReference {
    
    return Firestore.firestore().collection(collectionReference.rawValue)
}

