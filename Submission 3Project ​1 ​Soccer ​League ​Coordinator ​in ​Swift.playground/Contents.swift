/*
 The purpose of this code it to divide  18 children who have signed up for the league into three even teams — Dragons, Sharks, and Raptors. This code is divided into 3 parts.
 
Part 1 Uses the information for the 18 players in the Player Info spreadsheet and stores them into individual arrays. This part then uses these individual arrays and creates a collection named theLeague.
 
 Part 2: Creates a logic to iterate through all 18 players and divides them into two groups: experienced and inexerienced players. Next, this part divides these players into the three teams such that the number of experienced players on each team are the same.
 
Part 3: Iterates through all three teams of players and generates a personalized letter to the guardians, letting them know which team the child has been placed on and when they should attend their first team team practice.

 The following information has been provided:
 
 Table 1: Player Data
 Name                 Height (inches)    Soccer Experience         Guardian Name(s)
 Eva Godon              45                  NO               Wendy and Mike Gordon
 Matt Gi                40                  NO               Charles and Sylvia Gill
 Kimmy Sten             41                  NO               Bill and Hillary Stein
 Sammy Adam             45                  NO               Jeff Adams
 Sal Dali               41                  NO               Gala Dali
 Joe Kavalier           39                  NO               Sam and Elaine Kavalier
 Ben Finkelsein         44                  NO               Aaron and Jill Finkelstein
 Chloe Alaska           47                  NO               David and Jamie Alaska
 Arnold Willi           43                  NO               Claire Willis
 Joe Smith              42                 YES               Jim and Jan Smith
 Jill Tanner            36                 YES               Clara Tanner
 Bill Bon               43                 YES               Sara and Jenny Bon
 Karl Saygan            42                 YES               Heather Bledsoe
 Suzane Greenberg       44                 YES               Henrietta Dumas
 Diego Soto             41                 YES               Robin and Sarika Soto
 Phillip Helm           44                 YES               Thomas Helm and Eva Jones
 Les Clay               42                 YES               Wynonna Brown
 Herschel Krustofski    45                 YES               Hyman and Rachel Krustofski
 
 
PRACTICE DATES
 Dragons - March 17, 1pm
 Sharks - March 17, 3pm
 Raptors - March 18, 1pm

*/



/**********************************************    PART 1   *****************************
 1.1 The first step to this code is to assign the values from Table 1 to individual arrays.
 ****************************************************************************************/

let player1: [String : Any] = [
    "name": "Eva Gordon",
    "height":45.0 ,
    "hasSoccerExperience": false,
    "guardians": "Wendy and Mike Gordon"
]

let player2: [String : Any] = [
    "name": "Matt Gill",
    "height":40.0 ,
    "hasSoccerExperience": false,
    "guardians": "Charles and Sylvia Gill"
]

let player3: [String : Any] = [
    "name": "Kimmy Stein",
    "height":41.0 ,
    "hasSoccerExperience": false,
    "guardians": "Bill and Hillary Stein"
]

let player4: [String : Any] = [
    "name": "Sammy Adams",
    "height":45.0 ,
    "hasSoccerExperience": false,
    "guardians": "Jeff Adams"
]

let player5: [String : Any] = [
    "name": "Sal Dali",
    "height":41.0 ,
    "hasSoccerExperience": false,
    "guardians": "Gala Dali"
]

let player6: [String : Any] = [
    "name": "Joe Kavalier",
    "height":39.0 ,
    "hasSoccerExperience": false,
    "guardians": "Sam and Elaine Kavalier"
]

let player7: [String : Any] = [
    "name": "Ben Finkelstein",
    "height":44.0 ,
    "hasSoccerExperience": false,
    "guardians": "Aaron and Jill Finkelstein"
]

let player8: [String : Any] = [
    "name": " Chloe Alaska",
    "height":47.0 ,
    "hasSoccerExperience": false,
    "guardians": "David and Jamie Alaska"
]

let player9: [String : Any] = [
    "name": "Arnold Willis",
    "height":43.0 ,
    "hasSoccerExperience": false,
    "guardians": "Claire Willis"
]

let player10: [String : Any] = [
    "name": "Joe Smith",
    "height": 42.0,
    "hasSoccerExperience":true ,
    "guardians": "Jim and Jan Smith"
]

let player11: [String : Any] = [
    "name": "Jill Tanner ",
    "height": 36.0,
    "hasSoccerExperience":true ,
    "guardians": "Clara Tanner"
]

let player12: [String : Any] = [
    "name": "Bill Bon",
    "height": 43.0,
    "hasSoccerExperience":true ,
    "guardians": "Sara and Jenny Bon"
]

let player13: [String : Any] = [
    "name": "Karl Saygan",
    "height": 42.0,
    "hasSoccerExperience":true ,
    "guardians": "Heather Bledsoe"
]

let player14: [String : Any] = [
    "name": "Suzane Greenberg",
    "height": 44.0,
    "hasSoccerExperience":true ,
    "guardians": "Henrietta Dumas"
]

let player15: [String : Any] = [
    "name": "Diego Soto",
    "height": 41.0,
    "hasSoccerExperience":true ,
    "guardians": "Robin and Sarika Soto"
]

let player16: [String : Any] = [
    "name": "Phillip Helm",
    "height": 44.0,
    "hasSoccerExperience":true ,
    "guardians": "Thomas Helm and Eva Jones"
]

let player17: [String : Any] = [
    "name": "Les Clay",
    "height": 42.0,
    "hasSoccerExperience":true ,
    "guardians": "Wynonna Brown"
]

let player18: [String : Any] = [
    "name": "Herschel Krustofski",
    "height": 45.0,
    "hasSoccerExperience":true ,
    "guardians": "Hyman and Rachel Krustofski"
]


/*******************************************************************************************************
 1.2 This portion of the code then creates a collection named theLegue, which houses all the player data
 *******************************************************************************************************/

var theLeague = [
    player1,
    player2,
    player3,
    player4,
    player5,
    player6,
    player7,
    player8,
    player9,
    player10,
    player11,
    player12,
    player13,
    player14,
    player15,
    player16,
    player17,
    player18,
]

/*******************************************    PART 2   ***********************************************
 STEP 2.1 This portion of the code separates the players into two arrays, depending on player skill level.
 ******************************************************************************************************/


var experiencedPlayers: [[String: Any]] = []
var inexperiencedPlayers: [[String: Any]] = []


for player in theLeague {
    if player["hasSoccerExperience"] as! Bool == true {experiencedPlayers.append(player)}
    else {inexperiencedPlayers.append(player)}
    }
let numberOfExpPlayers = experiencedPlayers.count

numberOfExpPlayers

/******************************************************************************************
 STEP 2.2 This portion of the code evenly distributed experienced and inexperienced players
 *******************************************************************************************/

var dragons: [[String: Any]] = []
var sharks: [[String: Any]] = []
var raptors: [[String: Any]] = []

var dragonsCount: Int = dragons.count
var sharksCount: Int = sharks.count
var raptorsCount: Int = raptors.count

for player in experiencedPlayers {
    if  dragonsCount == sharksCount {dragons.append(player);
        dragonsCount = dragons.count}

    else if raptorsCount < dragonsCount {raptors.append(player);
            raptorsCount = raptors.count}
    
    else if sharksCount < dragonsCount {sharks.append(player);
            sharksCount = sharks.count}
    }

for player in inexperiencedPlayers {
    if  dragonsCount == sharksCount {dragons.append(player);
        dragonsCount = dragons.count}
        
    else if raptorsCount < dragonsCount {raptors.append(player);
            raptorsCount = raptors.count}
        
    else if sharksCount < dragonsCount {sharks.append(player);
            sharksCount = sharks.count}
    }
/**************************************************    PART 3   ********************************************
 STEP 3.1 This portion of the code creates an arrays in which we can store the letters which are to be sent
 to the guardians.
 ************************************************************************************************************/

var letters :[String] = []

/****************************************************************************************
 3.2 This portion of the code stores the practice dates so we can use them in the letters
 ****************************************************************************************/

let soccerPracticeDateDragons = "March 17, 1pm"
let soccerPracticeDateSharks = "March 17, 3pm"
let soccerPracticeDateRaptors = "March 18, 1pm"

/***************************************************************************
 3.3 This portion of the code uses three loops to generate the letters
 ***************************************************************************/

for player in dragons {
letters.append("Dear \(player["guardians"] ?? 1),  This letter is to inform you that \(player["name"] ?? 1) is assigned to team Dragons. Team practice begins on \(soccerPracticeDateDragons). We look forward to your continued support throughout this years soccer season!")
}

for player in sharks {
    letters.append("Dear \(player["guardians"] ?? 1),  This letter is to inform you that \(player["name"] ?? 1) is assigned to team Sharks. Team practice begins on \(soccerPracticeDateSharks). We look forward to your continued support throughout this years soccer season!")
}
for player in raptors {
    letters.append("Dear \(player["guardians"] ?? 1),  This letter is to inform you that \(player["name"] ?? 1) is assigned to team Raptors. Team practice begins on \(soccerPracticeDateRaptors). We look forward to your continued support throughout this years soccer season!")
}


/***************************************************************************************************
 3.4 This portion of the code prints the letters individually
 ***************************************************************************************************/


 for element in letters {
 print("\(element)\n")
}
