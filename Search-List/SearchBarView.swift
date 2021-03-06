//
//  SearchBarView.swift
//  Search-List
//
//  Created by Jainy Alvin on 2/17/22.
//

import SwiftUI
import UIKit

struct SearchBarView: UIViewRepresentable{
    
    @Binding var text: String
    
    class Coordinator: NSObject, UISearchBarDelegate {
      @Binding var text: String
      init(text: Binding<String>) {
        _text = text
      }
      func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        text = searchText
      }
    }
    func makeCoordinator() -> SearchBarView.Coordinator {
      return Coordinator(text: $text)
    }
    func makeUIView(context: UIViewRepresentableContext<SearchBarView>) -> UISearchBar {
      let searchBar = UISearchBar(frame: .zero)
      searchBar.delegate = context.coordinator
      searchBar.searchBarStyle = .minimal
      return searchBar
    }
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBarView>) {
      uiView.text = text
    }
    
    
}



