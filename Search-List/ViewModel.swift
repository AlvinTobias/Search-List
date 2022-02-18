//
//  ViewModel.swift
//  Search-List
//
//  Created by Jainy Alvin on 2/17/22.
//

import Foundation
import CloudKit
import Metal
class EventViewModel : ObservableObject
{
    @Published var eventListArray : [Event] = [Event]()
    @Published var eventListArraySearchResult : [Event] = [Event]()
    
    init()
    {
        let EventA : Event = Event()
        EventA.id = 1
        EventA.notes = "Alvin Tobias"
        self.eventListArray.append(EventA)
        
        let EventB : Event = Event()
        
        EventB.id = 2
        EventB.notes = "Alvin Jainy"
        self.eventListArray.append(EventB)
        
        let EventC : Event = Event()
        
        EventC.id = 3
        EventC.notes = "Alvin Isabel Jainy"
        self.eventListArray.append(EventC)
        
        let EventD : Event = Event()
       
        EventD.id = 4
        EventD.notes = "Jainy Alvin"
        self.eventListArray.append(EventD)
        
        let EventE : Event = Event()
       
        EventE.id = 5
        EventE.notes = "Isabel Tobias"
        self.eventListArray.append(EventE)
        
        self.eventListArraySearchResult = eventListArray
    }
    
}
