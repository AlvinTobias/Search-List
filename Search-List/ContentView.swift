//
//  ContentView.swift
//  Search-List
//
//  Created by Jainy Alvin on 2/17/22.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var EventNotesInfo : EventViewModel = EventViewModel()
    
    @State var TextValue : String
    
    var body: some View {

        VStack
        {
            SearchBarView(text: $TextValue)
                
            List{
                ForEach(EventNotesInfo.eventListArraySearchResult){
                    A in
                    Text(A.notes!)
                    
                }
                
            }
         
        }
        .onChange(of: TextValue) { newValue in
            Getsearcharray(mystring: newValue)
        }
    }
    
    func Getsearcharray (mystring : String)
    {
        if(mystring.isEmpty)
        {
            EventNotesInfo.eventListArraySearchResult = EventNotesInfo.eventListArray
        }
        else
        {
            //EventNotesInfo.eventListArraySearchResult = EventNotesInfo.eventListArray.filter{$0.notes!.contains(mystring)}
            
            EventNotesInfo.eventListArraySearchResult = EventNotesInfo.eventListArray.filter{$0.notes!.range(of: mystring, options: .caseInsensitive) != nil }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(TextValue: "")
    }
}
