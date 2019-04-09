//
//  SessionBank.swift
//  Comic-Con
//
//  Created by Guilherme Piccoli on 08/04/19.
//  Copyright © 2019 Guilherme Piccoli. All rights reserved.
//

import Foundation

public class SessionBank{
    
    var list = [Session]()
    
    public init() {
        
        
        list.append(Session.init(idSession: 1,
                                 imageSpeaker: "1_sergio",
                                 sessionStartHour: 02,
                                 sessionStartMinute: 00,
                                 sessionEndHour: 03,
                                 sessionEndMinute: 30,
                                 speaker: "Sergio Aragonés",
                                 smallDescription: "Artist, MAD Magazine, Groo",
                                 bigDescription: "One of MAD magazine's longest-running cartoonists (only Al Jaffee has been around longer) and the creator of dim-witted barbarian Groo the Wanderer, Sergio Aragonés is one of comics’ most popular creators. He has won every major cartooning award including the Reuben, the Comic-Con Icon award, the Will Eisner Hall of Fame award, various other Eisners, various Harveys, and even has two awards named for him. In addition to his continuing work for MAD, Sergio had his own comic book series at Bongo Comics, Sergio Aragonés Funnies. He continues to draw Groo for Dark Horse Comics and is presently working on a series in which Groo meets Tarzan, of all people!",
                                 trackLocation: "Comics @ Exhibit Hall",
                                 stageNumber: 1))
        
        list.append(Session.init(idSession: 2,
                                 imageSpeaker: "2_vita",
                                 sessionStartHour: 02,
                                 sessionStartMinute: 00,
                                 sessionEndHour: 03,
                                 sessionEndMinute: 00,
                                 speaker: "Vita Ayala",
                                 smallDescription: "Writer, Supergirl",
                                 bigDescription: "Vita Ayala is a queer Afro-Latinx writer out of New York City, where they live with their wife and cat sons. They learned to read and write much later than their peers, and have been making up for it by hoarding books like a dragon and using up ink like it’s going out of style since. They have written for DC (Supergirl), Dark Horse, IDW (Magic The Gathering), Image, Marvel (Marvel Knights 20th), and Valiant Comics (Livewire), as well as having creator-owned work through Black Mask Studios (The Wilds) and Vault Comics (Submerged). They’re non-stop, like Hamilton!",
                                 trackLocation: "Comics @ Exhibit Hall",
                                 stageNumber: 2))
        
        list.append(Session.init(idSession: 3,
                                 imageSpeaker: "3_peter",
                                 sessionStartHour: 02,
                                 sessionStartMinute: 00,
                                 sessionEndHour: 04,
                                 sessionEndMinute: 00,
                                 speaker: "Peter S.Beagle",
                                 smallDescription: "Author, The Last Unicorn",
                                 bigDescription: "Peter S. Beagle is the bestselling author of The Last Unicorn, which has sold a reported five million copies since its initial publication. His other novels include A Fine & Private Place, The Innkeeper’s Song, Tamsin, Summerlong, and In Calabria. Beagle’s short fiction has been collected in five volumes by Tachyon Publications: The Rhinoceros Who Quoted Nietzsche, The Line Between, We Never Talk About My Brother, Sleight of Hand, and The Overneath. He has won the Hugo, Nebula, Mythopoeic, and Grand Prix de l’Imaginaire awards and the World Fantasy Award for Lifetime Achievement. Beagle lives in Northern California.",
                                 trackLocation: "Books and Novels @ Exhibit Hall",
                                 stageNumber: 3))
        
        list.append(Session.init(idSession: 4,
                                 imageSpeaker: "4_jen",
                                 sessionStartHour: 03,
                                 sessionStartMinute: 45,
                                 sessionEndHour: 05,
                                 sessionEndMinute: 00,
                                 speaker: "Jen Bartel",
                                 smallDescription: "Artist, Black Panther",
                                 bigDescription: "Jen Bartel is an illustrator and comic artist who specializes in drawing strong ladies—she is best known for her ongoing cover work for clients like Marvel, DC/Vertigo, and Dark Horse. She is the co-creator and artist of the Image Comics book, Blackbird, but her interior work has also been featured on titles like Black Panther, The Mighty Thor, and America.",
                                 trackLocation: "Comics @ Exhibit Hall",
                                 stageNumber: 1))
        
        
        list.append(Session.init(idSession: 5,
                                 imageSpeaker: "5_julie",
                                 sessionStartHour: 03,
                                 sessionStartMinute: 15,
                                 sessionEndHour: 04,
                                 sessionEndMinute: 15,
                                 speaker: "Julie Benson",
                                 smallDescription: "Writer, Batgirl and the Birds of Prey",
                                 bigDescription: "Julie Benson grew up in Illinois with access to her father’s Silver Age comic collection and a mutual love of TV and film, particularly sci-fi, westerns, mysteries, and screwball comedies. Working with her sister, Shawna, they’ve penned episodes of the Emmy Award-winning webseries, Emma Approved, wrote on Seasons 3 through 5 of The CW’s The 100, and are currently co-producers on a new Netflix show, Wu Assassins. They also have written Batgirl and the Birds of Prey and Green Arrow for DC Comics.",
                                 trackLocation: "TV and Series @ Exhibit Hall",
                                 stageNumber: 2))
        
        list.append(Session.init(idSession: 6,
                                 imageSpeaker: "6_shawna",
                                 sessionStartHour: 03,
                                 sessionStartMinute: 15,
                                 sessionEndHour: 04,
                                 sessionEndMinute: 15,
                                 speaker: "Shawna Benson",
                                 smallDescription: "Writer, Green Arrow",
                                 bigDescription: "Shawna Benson, like her sister Julie, grew up in Illinois with access to her father’s Silver Age comic collection and a mutual love of TV and film, particularly sci-fi, westerns, mysteries, and screwball comedies. Working with her sister, they’ve penned episodes of the Emmy Award-winning webseries, Emma Approved, wrote on Seasons 3 through 5 of The CW’s The 100, and are currently co-producers on a new Netflix show, Wu Assassins. They also have written Batgirl and the Birds of Prey and Green Arrow for DC Comics.",
                                 trackLocation: "TV and Series @ Exhibit Hall",
                                 stageNumber: 2))
        
        list.append(Session.init(idSession: 7,
                                 imageSpeaker: "7_kendare",
                                 sessionStartHour: 04,
                                 sessionStartMinute: 30,
                                 sessionEndHour: 05,
                                 sessionEndMinute: 30,
                                 speaker: "Kendare Blake",
                                 smallDescription: "Author, Three Dark Crowns series",
                                 bigDescription: "Kendare Blake is the #1 New York Times bestselling author of the Three Dark Crowns series, the Anna Dress in Blood duo, and the Goddess War trilogy. Her work is dark, violent, and features passages describing food when she writes while hungry. Born in South Korea, she doesn’t speak a lick of Korean, as she was packed off early to her adoptive parents. That might be just an excuse, though, as she is bad at learning foreign languages. She enjoys the work of Mulan Kundera, Caitlin R Kiernan, and Richard Linklate.",
                                 trackLocation: "Books and Novels @ Exhibit Hall",
                                 stageNumber: 3))
        
        list.append(Session.init(idSession: 8,
                                 imageSpeaker: "8_greg",
                                 sessionStartHour: 05,
                                 sessionStartMinute: 15,
                                 sessionEndHour: 06,
                                 sessionEndMinute: 30,
                                 speaker: "Greg Capullo",
                                 smallDescription: "Artist, Batman",
                                 bigDescription: "Greg Capullo is a self-taught Illustrator and the current artist on the best-selling and highly acclaimed Batman series for DC Comics. Prior to that, he was best known for his 80-issue run on Image Comics' Spawn, created by Todd McFarlane. Other popular comics work includes Marvel Comics X-Force and Quasar (as well as a slew of one-shot titles). He is also the creator of The Creech, a sci fi/horror comic published by Image Comics. Greg has provided art for Blizzard Entertainment’s World of Warcraft, contributed lead character designs for the award-winning HBO animated Spawn series, was the cover artist for many popular musical groups including Korn and Disturbed, and worked behind the scenes on many projects ranging from toy design to video games for TME.",
                                 trackLocation: "Comics @ Exhibit Hall ",
                                 stageNumber: 1))
        
        
        
        list.append(Session.init(idSession: 9,
                                 imageSpeaker: "9_donny",
                                 sessionStartHour: 04,
                                 sessionStartMinute: 30,
                                 sessionEndHour: 06,
                                 sessionEndMinute: 30,
                                 speaker: "Donny Cates",
                                 smallDescription: "Writer, Venom",
                                 bigDescription: "Donny Cates is a writer of comic books, currently working on Venom, Cosmic Ghost Rider, Death of the Inhumans, Redneck, and Babyteeth. His past works include Thanos, Doctor Strange, Damnation, God Country, Buzzkill, The Ghost Fleet, The Paybacks, Interceptor, Star Trek, and Atomahawk. He's from the town that King of the Hill was based on, but lives in Austin, TX with his cat and his books. He is much more interesting than this bio makes him sound. Promise.",
                                 trackLocation: "Comics @ Exhibit Hall",
                                 stageNumber: 2))
        
        list.append(Session.init(idSession: 10,
                                 imageSpeaker: "10_katie",
                                 sessionStartHour: 06,
                                 sessionStartMinute: 00,
                                 sessionEndHour: 07,
                                 sessionEndMinute: 00,
                                 speaker: "Katie Cook",
                                 smallDescription: "Writer-illustrator, My Little Pony",
                                 bigDescription: "Katie Cook is an illustrator and writer whose main focus is in comic books and children’s books. She is the creator of the popular webcomic Nothing Special on Webtoon and Gronk: A Monster’s Story. She spent several years as the lead writer for IDW’s My Little Pony: Friendship is Magic. Katie is the illustrator of the Star Wars books ABC-3PO and Obi-123.She has also done work for Marvel, Disney, Fraggle Rock, and much more!",
                                 trackLocation: "Comics @ Exhibit Hall",
                                 stageNumber: 3))
    }
}
