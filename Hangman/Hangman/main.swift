//
//  main.swift
//  Hangman
//
//  Created by Alex Paul on 10/15/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

var gameContinue = "yes"

repeat {
    
    let allTheWords = ["able", "about", "account", "acid", "across", "addition", "adjustment", "advertisement", "after", "again", "against", "agreement", "almost", "among", "amount", "amusement", "angle", "angry", "animal", "answer", "apparatus", "apple", "approval", "arch", "argument", "army", "attack", "attempt", "attention", "attraction", "authority", "automatic", "awake", "baby", "back", "balance", "ball", "band", "base", "basin", "basket", "bath", "beautiful", "because", "before", "behaviour", "belief", "bell", "bent", "berry", "between", "bird", "birth", "bite", "bitter", "black", "blade", "blood", "blow", "blue", "board", "boat", "body", "boiling", "bone", "book", "boot", "bottle", "brain", "brake", "branch", "brass", "bread", "breath", "brick", "bridge", "bright", "broken", "brother", "brown", "brush", "bucket", "building", "bulb", "burn", "burst", "business", "butter", "button", "cake", "camera", "canvas", "card", "care", "carriage", "cart", "cause", "certain", "chain", "chalk", "chance", "change", "cheap", "cheese", "chemical", "chest", "chief", "chin", "church", "circle", "clean", "clear", "clock", "cloth", "cloud", "coal", "coat", "cold", "collar", "colour", "comb", "come", "comfort", "committee", "common", "company", "comparison", "competition", "complete", "complex", "condition", "connection", "conscious", "control", "cook", "copper", "copy", "cord", "cork", "cotton", "cough", "country", "cover", "crack", "credit", "crime", "cruel", "crush", "current", "curtain", "curve", "cushion", "damage", "danger", "dark", "daughter", "dead", "dear", "death", "debt", "decision", "deep", "degree", "delicate", "dependent", "design", "desire", "destruction", "detail", "development", "different", "digestion", "direction", "dirty", "discovery", "discussion", "disease", "disgust", "distance", "distribution", "division", "door", "doubt", "down", "drain", "drawer", "dress", "drink", "driving", "drop", "dust", "early", "earth", "east", "edge", "education", "effect", "elastic", "electric", "engine", "enough", "equal", "error", "even", "event", "ever", "every", "example", "exchange", "existence", "expansion", "experience", "expert", "face", "fact", "fall", "false", "family", "farm", "father", "fear", "feather", "feeble", "feeling", "female", "fertile", "fiction", "field", "fight", "finger", "fire", "first", "fish", "fixed", "flag", "flame", "flat", "flight", "floor", "flower", "fold", "food", "foolish", "foot", "force", "fork", "form", "forward", "fowl", "frame", "free", "frequent", "friend", "from", "front", "fruit", "full", "future", "garden", "general", "girl", "give", "glass", "glove", "goat", "gold", "good", "government", "grain", "grass", "great", "green", "grey", "grip", "group", "growth", "guide", "hair", "hammer", "hand", "hanging", "happy", "harbour", "hard", "harmony", "hate", "have", "head", "healthy", "hear", "hearing", "heart", "heat", "help", "high", "history", "hole", "hollow", "hook", "hope", "horn", "horse", "hospital", "hour", "house", "humour", "idea", "important", "impulse", "increase", "industry", "insect", "instrument", "insurance", "interest", "invention", "iron", "island", "jelly", "jewel", "join", "journey", "judge", "jump", "keep", "kettle", "kick", "kind", "kiss", "knee", "knife", "knot", "knowledge", "land", "language", "last", "late", "laugh", "lead", "leaf", "learning", "leather", "left", "letter", "level", "library", "lift", "light", "like", "limit", "line", "linen", "liquid", "list", "little", "living", "lock", "long", "look", "loose", "loss", "loud", "love", "machine", "make", "male", "manager", "mark", "market", "married", "mass", "match", "material", "meal", "measure", "meat", "medical", "meeting", "memory", "metal", "middle", "military", "milk", "mind", "mine", "minute", "mist", "mixed", "money", "monkey", "month", "moon", "morning", "mother", "motion", "mountain", "mouth", "move", "much", "muscle", "music", "nail", "name", "narrow", "nation", "natural", "near", "necessary", "neck", "need", "needle", "nerve", "news", "night", "noise", "normal", "north", "nose", "note", "number", "observation", "offer", "office", "only", "open", "operation", "opinion", "opposite", "orange", "order", "organization", "ornament", "other", "oven", "over", "owner", "page", "pain", "paint", "paper", "parallel", "parcel", "part", "past", "paste", "payment", "peace", "pencil", "person", "physical", "picture", "pipe", "place", "plane", "plant", "plate", "play", "please", "pleasure", "plough", "pocket", "point", "poison", "polish", "political", "poor", "porter", "position", "possible", "potato", "powder", "power", "present", "price", "print", "prison", "private", "probable", "process", "produce", "profit", "property", "prose", "protest", "public", "pull", "pump", "punishment", "purpose", "push", "quality", "question", "quick", "quiet", "quite", "rail", "rain", "range", "rate", "reaction", "reading", "ready", "reason", "receipt", "record", "regret", "regular", "relation", "religion", "representative", "request", "respect", "responsible", "rest", "reward", "rhythm", "rice", "right", "ring", "river", "road", "roll", "roof", "room", "root", "rough", "round", "rule", "safe", "sail", "salt", "same", "sand", "scale", "school", "science", "scissors", "screw", "seat", "second", "secret", "secretary", "seed", "seem", "selection", "self", "send", "sense", "separate", "serious", "servant", "shade", "shake", "shame", "sharp", "sheep", "shelf", "ship", "shirt", "shock", "shoe", "short", "shut", "side", "sign", "silk", "silver", "simple", "sister", "size", "skin", "skirt", "sleep", "slip", "slope", "slow", "small", "smash", "smell", "smile", "smoke", "smooth", "snake", "sneeze", "snow", "soap", "society", "sock", "soft", "solid", "some", "song", "sort", "sound", "soup", "south", "space", "spade", "special", "sponge", "spoon", "spring", "square", "stage", "stamp", "star", "start", "statement", "station", "steam", "steel", "stem", "step", "stick", "sticky", "stiff", "still", "stitch", "stocking", "stomach", "stone", "stop", "store", "story", "straight", "strange", "street", "stretch", "strong", "structure", "substance", "such", "sudden", "sugar", "suggestion", "summer", "support", "surprise", "sweet", "swim", "system", "table", "tail", "take", "talk", "tall", "taste", "teaching", "tendency", "test", "than", "that", "then", "theory", "there", "thick", "thin", "thing", "this", "thought", "thread", "throat", "through", "through", "thumb", "thunder", "ticket", "tight", "till", "time", "tired", "together", "tomorrow", "tongue", "tooth", "touch", "town", "trade", "train", "transport", "tray", "tree", "trick", "trouble", "trousers", "true", "turn", "twist", "umbrella", "under", "unit", "value", "verse", "very", "vessel", "view", "violent", "voice", "waiting", "walk", "wall", "warm", "wash", "waste", "watch", "water", "wave", "weather", "week", "weight", "well", "west", "wheel", "when", "where", "while", "whip", "whistle", "white", "wide", "will", "wind", "window", "wine", "wing", "winter", "wire", "wise", "with", "woman", "wood", "wool", "word", "work", "worm", "wound", "writing", "wrong", "year", "yellow", "yesterday", "young"]
    let hangManPics = [
        """
____
|    |
|  (*_*)
|   /|\\
|    |
|   / \\
_|_
|   |______
|          |
|__________|
""",
        """
____
|    |
|   (_)
|   /|\\
|    |
|   /
_|_
|   |______
|          |
|__________|
""",
        """
____
|    |
|   (_)
|   /|\\
|    |
|
_|_
|   |______
|          |
|__________|
""",
        """
____
|    |
|   (_)
|    |\\
|    |
|
_|_
|   |______
|          |
|__________|
""",
        """
____
|    |
|   (_)
|    |
|    |
|
_|_
|   |______
|          |
|__________|
""",
        """
____
|    |
|   (_)
|
|
|
_|_
|   |______
|          |
|__________|
""",
        """
____
|    |
|
|
|
|
_|_
|   |______
|          |
|__________|
"""
    ]
    
    print("please enter your name: ")
    let userName = readLine() ?? "error"
    print("Welcome \(userName) let's play hangman!")
    
    let maskSymbol = "_"
    var randomWord = allTheWords.randomElement() ?? "no value available"
    var myMaskedArray = [String]()
    var letterBank = [String]()
    let randomWordArray = Array(randomWord)
    
    for _ in randomWordArray {
        myMaskedArray.append(maskSymbol)
    }
    print(myMaskedArray.joined())
    
    var chancesLeft = 6
    var myLetterCount = randomWord.count
    var guessCount = 0
    
    while chancesLeft > 0 && myLetterCount > 0 {
        print("\(hangManPics[chancesLeft]) \nPlease enter a letter:")
        let userInput = readLine()?.lowercased() ?? "n/a"
        guard userInput.count == 1 else {
            print("not a valid input")
            continue
        }
        guessCount += 1
        
        print("\nYou entered " + userInput)
        
        if !randomWordArray.contains(Character(userInput )) {
            letterBank.append(userInput)
            print("\n\(userInput) is incorrect, You have \(chancesLeft) chances left. You have guessed the letters: \(letterBank) so far")
            chancesLeft -= 1
            continue
        }
        
        var index = 0
        for letter in randomWordArray {
            if userInput == String(letter) {
                letterBank.append(userInput)
                myMaskedArray[index] = String(letter)
                print("\(letter) is correct. You have guessed the letters: \(letterBank) so far")
                print(myMaskedArray.joined(), separator: " ")
                myLetterCount -= 1
            }
            index += 1
        }
    }
    
    if  randomWord == myMaskedArray.joined() {
        print("\(hangManPics[chancesLeft]) You win! Thanks for playing! /nIt took \(guessCount) tries.  Great job! ^.^")
        myMaskedArray.removeAll()
        print("Would you like to play again? \nPlease enter: yes or no")
        if let userContinue = readLine()?.lowercased() {
            gameContinue = userContinue == "yes" ? "yes" : "no"
        }
    }
    
    if chancesLeft == 0 {
        print(hangManPics[chancesLeft])
        print("The word was \(randomWord) \ngame over - would you like to play again, yes or no")
        
        if let userContinue = readLine()?.lowercased() {
            gameContinue = userContinue == "yes" ? "yes" : "no"
        }
        if gameContinue == "yes"{
            if let random = allTheWords.randomElement() {
                randomWord = random
            }
            myMaskedArray.removeAll()
        }
        else if gameContinue == "no" {
            print("Thanks for playing \(userName)! See ya later!")
        }
    }
    
} while gameContinue == "yes"
