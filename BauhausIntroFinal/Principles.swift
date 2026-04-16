//
//  Principles.swift
//  Untitle Book
//
//  Created by 孜 on 2026/3/16.
//
import Foundation

struct Principle : Identifiable{
    let id : UUID = UUID()
    
    let name : String
    let imageOn : String
    let imageOff : String
    let introduction : String

}

let principles : [Principle] = [
    
    Principle(name: "Form Follows Function", imageOn: "1_2", imageOff: "1_1", introduction: "This principle emphasizes that the shape and appearance of an object should be determined by its purpose. In Bauhaus design, decoration is avoided unless it serves a practical role. Designers focus on creating forms that clearly express how an object works and how it should be used."),
    
    Principle(name: "Truth to Materials", imageOn: "2_2", imageOff: "2_1", introduction: "Bauhaus designers believed materials should be used honestly and shown in their natural state. Instead of disguising materials, the design should highlight their inherent qualities—such as the strength of steel, the transparency of glass, or the texture of wood. This approach values authenticity and structural clarity."),
    
    Principle(name: "Less is More", imageOn: "3_2", imageOff: "3_1", introduction: "This principle promotes simplicity and reduction. By removing unnecessary elements, designers can achieve clarity, efficiency, and elegance. Minimal forms, clean lines, and limited colors help focus attention on the essential function and structure of a design."),
    
    Principle(name: "The New Unity of Art and Technology", imageOn: "4_2", imageOff: "4_1", introduction: "One of the core goals of the Bauhaus was to merge artistic creativity with modern industrial production. Designers and artists were encouraged to work with engineers and craftsmen to create objects that were both aesthetically refined and suitable for mass production, bridging the gap between art, craft, and industry.")

]
