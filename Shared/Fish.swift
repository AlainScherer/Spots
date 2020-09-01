//
//  Fish.swift
//  AppLearning
//
//  Created by Alain Scherer on 26.08.20.
//

import SwiftUI

struct Fish: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: String
    var color: Color
    var leichzeit: String
    var number: String
}

var fishes = [
    Fish(
        title: "Aal",
        subtitle: "Anguilla anguilla",
        image: "01",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Sep - Nov",
        number: "01"
    ),
    Fish(
        title: "Äsche",
        subtitle: "Thymallus thymallus",
        image: "02",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Apr - Mai",
        number: "02"
    ),
    Fish(
        title: "Alet",
        subtitle: "Squalius cephalus",
        image: "03",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Apr - Jun",
        number: "03"
    ),
    Fish(
        title: "Bachforelle",
        subtitle: "Salmo trutta forma fario",
        image: "04",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Okt - Dez",
        number: "04"
    ),
    Fish(
        title: "Bachsaibling",
        subtitle: "Salvelinus fontinalis",
        image: "05",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Nov - Jan",
        number: "05"
    ),
    Fish(
        title: "Barbe",
        subtitle: "Barbus barbus",
        image: "06",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Mai - Jun",
        number: "06"
    ),
    Fish(
        title: "Brachsme",
        subtitle: "Abramis brama",
        image: "07",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Mai - Jun",
        number: "07"
    ),
    Fish(
        title: "Flussbarsch",
        subtitle: "Perca fluviatilis",
        image: "08",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Mar - Mai",
        number: "08"
    ),
    Fish(
        title: "Forellenbarsch",
        subtitle: "Micropterus salmoides",
        image: "09",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Apr - Mai",
        number: "09"
    ),
    Fish(
        title: "Felchen",
        subtitle: "Coregonus",
        image: "10",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Jan - Dez",
        number: "10"
    ),
    Fish(
        title: "Hecht",
        subtitle: "Esox lucius",
        image: "11",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Mar - Mai",
        number: "11"
    ),
    Fish(
        title: "Karpfen",
        subtitle: "Cyprinus carpio",
        image: "12",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Mai - Jul",
        number: "12"
    ),
    Fish(
        title: "Kaulbarsch",
        subtitle: "Gymnocephalus cernua",
        image: "13",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Mar - Mai",
        number: "13"
    ),
    Fish(
        title: "Laube",
        subtitle: "Alburnus alburnus",
        image: "14",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Apr - Jun",
        number: "14"
    ),
    Fish(
        title: "Namaycush",
        subtitle: "Salvelinus namaycush",
        image: "15",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Dez - Feb",
        number: "15"
    ),
    Fish(
        title: "Nase",
        subtitle: "Chondrostoma nasus",
        image: "16",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Apr - Jun",
        number: "16"
    ),
    Fish(
        title: "Regenbogen Forelle",
        subtitle: "Oncorhynchus mykiss",
        image: "17",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Feb - Mai",
        number: "17"
    ),
    Fish(
        title: "Rotauge",
        subtitle: "Rutilus rutilus",
        image: "18",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Apr - Jun",
        number: "18"
    ),
    Fish(
        title: "Rotfeder",
        subtitle: "Scardinius erythrophthalmus",
        image: "19",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Apr - Jun",
        number: "19"
    ),
    Fish(
        title: "Schleie",
        subtitle: "Tinca tinca",
        image: "20",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Mai - Jul",
        number: "20"
    ),
    Fish(
        title: "Seeforelle",
        subtitle: "Salmo trutta forma lacustris",
        image: "21",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Okt - Dez",
        number: "21"
    ),
    Fish(
        title: "Seesaibling",
        subtitle: "Salvelinus alpinus",
        image: "22",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Nov - Jan",
        number: "22"
    ),
    Fish(
        title: "Sonnenbarsch",
        subtitle: "Lepomis gibbosus",
        image: "23",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Mai - Jul",
        number: "23"
    ),
    Fish(
        title: "Trüsche",
        subtitle: "Lota lota",
        image: "24",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Jan - Mar",
        number: "24"
    ),
    Fish(
        title: "Wels",
        subtitle: "Silurus glanis",
        image: "25",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Mai - Jun",
        number: "25"
    ),
    Fish(
        title: "Zander",
        subtitle: "Sander lucioperca",
        image: "26",
        color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        leichzeit: "Apr - Jun",
        number: "26"
    )
]
